import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/content.dart';
import '../sketch/mol.dart';
import '../state/progress_store.dart';
import '../theme/ink.dart';
import '../widgets/sketch_widgets.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({
    super.key,
    required this.levelTitle,
    required this.exercise,
    required this.index,
  });

  final String levelTitle;
  final Exercise exercise;
  final int index;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final _scroll = ScrollController();
  final _feedbackKey = GlobalKey();
  final _integer = TextEditingController();

  bool _showReason = false;
  bool _submitted = false;
  bool _correct = false;
  bool _hydrated = false;
  String? _single;
  final Set<String> _multi = {};
  final Map<String, String> _match = {};
  String? _hint;

  Question get question => widget.exercise.questions[widget.index];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_hydrated) return;
    _hydrated = true;
    final progress = ProgressScope.of(context).get(question.id);
    _submitted = progress.answered;
    _correct = progress.correct;
    _showReason = progress.answered;
    _restore(progress.response);
  }

  void _restore(String response) {
    if (response.isEmpty) return;
    switch (question.kind) {
      case QuestionKind.single:
        _single = response;
        break;
      case QuestionKind.multi:
        _multi.addAll(response.split(',').where((part) => part.isNotEmpty));
        break;
      case QuestionKind.match:
        for (final part in response.split(',')) {
          final bits = part.split('-');
          if (bits.length == 2) _match[bits[0]] = bits[1];
        }
        break;
      case QuestionKind.integer:
        _integer.text = response;
        break;
    }
  }

  @override
  void dispose() {
    _scroll.dispose();
    _integer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final store = ProgressScope.of(context);
    final flagged = store.get(question.id).flagged;
    return NotebookScaffold(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
            child: Row(
              children: [
                SketchIconButton(
                  tooltip: 'Back to the grid',
                  seed: 7,
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('←', style: InkText.heading),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Question ${question.number} of ${widget.exercise.questions.length}',
                        style: InkText.heading.copyWith(fontSize: 20),
                      ),
                      Text(
                        '${widget.levelTitle} · ${widget.exercise.title}',
                        style: InkText.body.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SketchIconButton(
                  key: Key('bulb-${question.id}'),
                  tooltip: _showReason ? 'Hide the reasoning' : 'Show the reasoning',
                  seed: 11,
                  hatch: _showReason ? InkColors.yellow : null,
                  onPressed: () => setState(() => _showReason = !_showReason),
                  child: BulbIcon(on: _showReason),
                ),
                const SizedBox(width: 6),
                SketchIconButton(
                  key: Key('flag-${question.id}'),
                  tooltip: flagged ? 'Remove the review flag' : 'Mark for review',
                  seed: 13,
                  hatch: flagged ? InkColors.red : null,
                  onPressed: () => store.toggleFlag(question.id),
                  child: FlagIcon(on: flagged),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              controller: _scroll,
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 28),
              children: [
                HighlighterPill(text: question.kindLabel),
                const SizedBox(height: 12),
                if (question.passage != null) ...[
                  SketchCard(
                    seed: inkSeed(question.passageTitle ?? question.id),
                    hatch: InkColors.yellow,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(question.passageTitle ?? 'Passage', style: InkText.heading.copyWith(fontSize: 20)),
                        const SizedBox(height: 6),
                        Text(question.passage!.trim(), style: InkText.body),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
                Text(question.prompt, style: InkText.body.copyWith(fontSize: 22)),
                if (question.figure != null) ...[
                  const SizedBox(height: 12),
                  Center(child: MoleculeView(sketch: question.figure!)),
                ],
                const SizedBox(height: 14),
                if (question.kind == QuestionKind.single || question.kind == QuestionKind.multi)
                  for (final choice in question.choices) ...[
                    _OptionTile(
                      question: question,
                      choice: choice,
                      selected: _isSelected(choice.key),
                      submitted: _submitted,
                      onTap: () => _onChoice(choice.key),
                    ),
                    const SizedBox(height: 10),
                  ],
                if (question.kind == QuestionKind.match) ...[
                  const Text('Column I', style: InkText.heading),
                  const SizedBox(height: 6),
                  for (final entry in question.column1) ...[
                    Text('${entry.key}. ${entry.text}', style: InkText.body),
                    const SizedBox(height: 4),
                  ],
                  const SizedBox(height: 8),
                  const Text('Column II', style: InkText.heading),
                  const SizedBox(height: 6),
                  for (final entry in question.column2) ...[
                    Text('${entry.key}. ${entry.text}', style: InkText.body),
                    const SizedBox(height: 4),
                  ],
                  const SizedBox(height: 12),
                  for (final entry in question.column1) ...[
                    Text(entry.key, style: InkText.heading),
                    const SizedBox(height: 6),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        for (final right in question.column2)
                          _LetterChip(
                            label: right.key,
                            selected: _match[entry.key] == right.key,
                            good: _submitted && question.matchKey[entry.key] == right.key && _match[entry.key] == right.key,
                            bad: _submitted && _match[entry.key] == right.key && question.matchKey[entry.key] != right.key,
                            onTap: _submitted
                                ? null
                                : () => setState(() => _match[entry.key] = right.key),
                          ),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ],
                if (question.kind == QuestionKind.integer)
                  TextField(
                    controller: _integer,
                    enabled: !_submitted,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    style: InkText.title.copyWith(fontSize: 32),
                    decoration: InputDecoration(
                      hintText: 'Type the integer',
                      hintStyle: InkText.body.copyWith(color: InkColors.brown),
                      filled: true,
                      fillColor: const Color(0xF7FFFFFF),
                      enabledBorder: _border(),
                      focusedBorder: _border(),
                      disabledBorder: _border(),
                    ),
                  ),
                if (_hint != null) ...[
                  const SizedBox(height: 8),
                  Text(_hint!, style: InkText.body.copyWith(color: InkColors.red)),
                ],
                if (!_submitted && question.kind != QuestionKind.single) ...[
                  const SizedBox(height: 12),
                  SketchButton(
                    key: Key('check-${question.id}'),
                    label: 'Check',
                    hatch: InkColors.green,
                    onPressed: _submitOpen,
                  ),
                ],
                if (_submitted) ...[
                  const SizedBox(height: 12),
                  SketchCard(
                    key: _feedbackKey,
                    seed: 21,
                    hatch: _correct ? InkColors.green : InkColors.red,
                    child: Text(
                      _correct ? 'Yes — that is right.' : _wrongLine(),
                      key: Key('feedback-${question.id}'),
                      style: InkText.body.copyWith(fontSize: 20),
                    ),
                  ),
                ],
                if (_showReason) ...[
                  const SizedBox(height: 12),
                  SketchCard(
                    key: Key('reason-${question.id}'),
                    seed: 27,
                    hatch: InkColors.yellow,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _submitted ? 'Why the right answer is right' : 'Reasoning, before you answer',
                          style: InkText.heading.copyWith(fontSize: 20),
                        ),
                        const SizedBox(height: 6),
                        Text(question.explanation, style: InkText.body),
                      ],
                    ),
                  ),
                ],
                const SizedBox(height: 16),
                Row(
                  children: [
                    if (widget.index > 0)
                      Expanded(
                        child: SketchButton(
                          label: 'Previous',
                          onPressed: () => _go(widget.index - 1),
                        ),
                      ),
                    if (widget.index > 0 && widget.index < widget.exercise.questions.length - 1)
                      const SizedBox(width: 8),
                    if (widget.index < widget.exercise.questions.length - 1)
                      Expanded(
                        child: SketchButton(
                          label: 'Next',
                          onPressed: () => _go(widget.index + 1),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool _isSelected(String key) {
    if (question.kind == QuestionKind.multi) return _multi.contains(key);
    return _single == key;
  }

  void _onChoice(String key) {
    if (question.kind == QuestionKind.multi) {
      if (_submitted) return;
      setState(() {
        if (!_multi.add(key)) _multi.remove(key);
        _hint = null;
      });
      return;
    }
    if (_submitted) return;
    final correct = question.accepts(key);
    setState(() {
      _single = key;
      _submitted = true;
      _correct = correct;
      _showReason = true;
      _hint = null;
    });
    ProgressScope.of(context).markAnswered(question.id, correct: correct, response: key);
    _revealFeedback();
  }

  void _submitOpen() {
    late final String response;
    if (question.kind == QuestionKind.multi) {
      if (_multi.isEmpty) {
        setState(() => _hint = 'Select at least one option.');
        return;
      }
      response = ( _multi.toList()..sort()).join(',');
    } else if (question.kind == QuestionKind.match) {
      if (question.column1.any((entry) => !_match.containsKey(entry.key))) {
        setState(() => _hint = 'Pair every entry in Column I.');
        return;
      }
      final parts = question.column1.map((entry) => '${entry.key}-${_match[entry.key]}').toList()..sort();
      response = parts.join(',');
    } else {
      if (canonInt(_integer.text) == null) {
        setState(() => _hint = 'Enter a whole number.');
        return;
      }
      response = canonInt(_integer.text)!;
    }
    final correct = question.accepts(response);
    setState(() {
      _submitted = true;
      _correct = correct;
      _showReason = true;
      _hint = null;
    });
    ProgressScope.of(context).markAnswered(question.id, correct: correct, response: response);
    _revealFeedback();
  }

  void _revealFeedback() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final target = _feedbackKey.currentContext;
      if (target == null || !_scroll.hasClients) return;
      Scrollable.ensureVisible(target, duration: const Duration(milliseconds: 250), alignment: 0.2);
    });
  }

  String _wrongLine() {
    switch (question.kind) {
      case QuestionKind.single:
        return 'Not this one. The right option is ${question.answer}.';
      case QuestionKind.multi:
        return 'Not the full set. The right options are ${question.answer}.';
      case QuestionKind.match:
        return 'Not quite. The pairs are ${question.answer}.';
      case QuestionKind.integer:
        return 'Not this value. The integer is ${question.answer}.';
    }
  }

  void _go(int index) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute<void>(
        builder: (_) => QuestionScreen(
          levelTitle: widget.levelTitle,
          exercise: widget.exercise,
          index: index,
        ),
      ),
    );
  }

  OutlineInputBorder _border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: InkColors.blue, width: 1.6),
    );
  }
}

class _OptionTile extends StatelessWidget {
  const _OptionTile({
    required this.question,
    required this.choice,
    required this.selected,
    required this.submitted,
    required this.onTap,
  });

  final Question question;
  final Choice choice;
  final bool selected;
  final bool submitted;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final right = question.kind == QuestionKind.multi
        ? question.answer.split(',').contains(choice.key)
        : question.answer == choice.key;
    Color? hatch;
    String? mark;
    if (submitted && right) {
      hatch = InkColors.green;
      mark = 'Right';
    } else if (submitted && selected && !right) {
      hatch = InkColors.red;
      mark = 'Your pick';
    } else if (selected) {
      hatch = InkColors.yellow;
    }
    return SketchCard(
      key: Key('option-${question.id}-${choice.key}'),
      seed: inkSeed('${question.id}-${choice.key}'),
      hatch: hatch,
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('(${choice.key})', style: InkText.heading.copyWith(fontSize: 20)),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(choice.text, style: InkText.body),
                if (choice.figure != null) ...[
                  const SizedBox(height: 8),
                  MoleculeView(sketch: choice.figure!),
                ],
                if (mark != null) ...[
                  const SizedBox(height: 4),
                  Text(mark, style: InkText.body.copyWith(fontSize: 16, color: InkColors.brown)),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _LetterChip extends StatelessWidget {
  const _LetterChip({
    required this.label,
    required this.selected,
    required this.good,
    required this.bad,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final bool good;
  final bool bad;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    Color? hatch;
    if (good) {
      hatch = InkColors.green;
    } else if (bad) {
      hatch = InkColors.red;
    } else if (selected) {
      hatch = InkColors.yellow;
    }
    return SketchCard(
      seed: inkSeed(label + selected.toString()),
      hatch: hatch,
      radius: 20,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      onTap: onTap,
      child: Text(label, style: InkText.heading.copyWith(fontSize: 18)),
    );
  }
}
