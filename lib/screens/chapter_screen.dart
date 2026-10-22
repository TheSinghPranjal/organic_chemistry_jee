import 'package:flutter/material.dart';

import '../models/content.dart';
import '../state/progress_store.dart';
import '../theme/ink.dart';
import '../widgets/sketch_widgets.dart';
import 'exercise_screen.dart';

class ChapterScreen extends StatelessWidget {
  const ChapterScreen({super.key, required this.chapter});

  final Chapter chapter;

  @override
  Widget build(BuildContext context) {
    final store = ProgressScope.of(context);
    return NotebookScaffold(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 28),
        children: [
          Row(
            children: [
              SketchIconButton(
                tooltip: 'Back',
                seed: 2,
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('←', style: InkText.heading),
              ),
              const SizedBox(width: 10),
              Expanded(child: Text(chapter.title, style: InkText.heading)),
            ],
          ),
          const SizedBox(height: 12),
          const HighlighterPill(
            text: 'Pick a level, then an exercise. The question numbers restart in each exercise.',
          ),
          const SizedBox(height: 16),
          for (final level in chapter.levels) ...[
            Text(level.title, style: InkText.title.copyWith(fontSize: 26)),
            const SizedBox(height: 8),
            for (final exercise in level.exercises) ...[
              _ExerciseTile(
                level: level,
                exercise: exercise,
                answered: store.answeredCount(exercise.questions.map((question) => question.id)),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => ExerciseScreen(levelTitle: level.title, exercise: exercise),
                    ),
                  );
                },
              ),
              const SizedBox(height: 10),
            ],
            const SizedBox(height: 8),
          ],
        ],
      ),
    );
  }
}

class _ExerciseTile extends StatelessWidget {
  const _ExerciseTile({
    required this.level,
    required this.exercise,
    required this.answered,
    required this.onTap,
  });

  final Level level;
  final Exercise exercise;
  final int answered;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SketchCard(
      key: Key('exercise-${exercise.id}'),
      seed: inkSeed(exercise.id),
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(exercise.title, style: InkText.heading),
          Text(exercise.topic, style: InkText.body),
          const SizedBox(height: 4),
          Text(
            '$answered of ${exercise.questions.length} answered',
            style: InkText.body.copyWith(fontSize: 16, color: InkColors.blue),
          ),
        ],
      ),
    );
  }
}
