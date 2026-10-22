import 'package:flutter/material.dart';

import '../models/content.dart';
import '../state/progress_store.dart';
import '../theme/ink.dart';
import '../widgets/sketch_widgets.dart';
import 'question_screen.dart';

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({
    super.key,
    required this.levelTitle,
    required this.exercise,
  });

  final String levelTitle;
  final Exercise exercise;

  @override
  Widget build(BuildContext context) {
    final store = ProgressScope.of(context);
    final ids = exercise.questions.map((question) => question.id);
    final answered = store.answeredCount(ids);
    final flagged = store.flaggedCount(ids);
    final width = MediaQuery.sizeOf(context).width.clamp(0, 440).toDouble();
    final columns = width >= 390 ? 5 : 4;

    return NotebookScaffold(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 28),
        children: [
          Row(
            children: [
              SketchIconButton(
                tooltip: 'Back',
                seed: 4,
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('←', style: InkText.heading),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('$levelTitle · ${exercise.title}', style: InkText.heading.copyWith(fontSize: 20)),
                    Text(exercise.topic, style: InkText.body.copyWith(fontSize: 16)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          HighlighterPill(text: exercise.instruction),
          const SizedBox(height: 10),
          Text(
            '$answered answered · $flagged marked for review',
            style: InkText.body.copyWith(fontSize: 17, color: InkColors.brown),
          ),
          const SizedBox(height: 12),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: exercise.questions.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: columns,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              final question = exercise.questions[index];
              final progress = store.get(question.id);
              return NumberBox(
                key: Key('box-${question.id}'),
                number: question.number,
                answered: progress.answered,
                flagged: progress.flagged,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => QuestionScreen(
                        levelTitle: levelTitle,
                        exercise: exercise,
                        index: index,
                      ),
                    ),
                  );
                },
              );
            },
          ),
          const SizedBox(height: 14),
          const Text(
            'A green box means you have answered, whether the pick was right or wrong. A red flag means you marked it for review.',
            style: InkText.body,
          ),
        ],
      ),
    );
  }
}
