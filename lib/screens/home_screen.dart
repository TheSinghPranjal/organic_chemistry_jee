import 'package:flutter/material.dart';

import '../data/catalog.dart';
import '../models/content.dart';
import '../state/progress_store.dart';
import '../theme/ink.dart';
import '../widgets/sketch_widgets.dart';
import 'chapter_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final store = ProgressScope.of(context);
    return NotebookScaffold(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(16, 18, 16, 28),
        children: [
          Text('Organic notebook', style: InkText.title),
          const SizedBox(height: 4),
          Text(
            'Twelve chapters. General Organic Chemistry, Isomerism, Hydrocarbons, and Halides are inked in.',
            style: InkText.body.copyWith(color: InkColors.brown),
          ),
          const SizedBox(height: 14),
          const HighlighterPill(
            text: 'Open a chapter, pick a set, then work the numbered questions.',
          ),
          const SizedBox(height: 16),
          for (var i = 0; i < chapters.length; i++) ...[
            _ChapterTile(
              index: i + 1,
              chapter: chapters[i],
              answered: store.answeredCount(chapters[i].questions.map((question) => question.id)),
              onTap: () => _open(context, chapters[i]),
            ),
            const SizedBox(height: 12),
          ],
        ],
      ),
    );
  }

  void _open(BuildContext context, Chapter chapter) {
    if (!chapter.available) {
      showDialog<void>(
        context: context,
        builder: (context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            child: SketchCard(
              seed: inkSeed(chapter.id),
              hatch: InkColors.yellow,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(chapter.title, style: InkText.heading),
                  const SizedBox(height: 8),
                  const Text('This chapter is not inked yet.', style: InkText.body),
                  const SizedBox(height: 14),
                  SketchButton(
                    label: 'Back to the list',
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ),
          );
        },
      );
      return;
    }
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => ChapterScreen(chapter: chapter)),
    );
  }
}

class _ChapterTile extends StatelessWidget {
  const _ChapterTile({
    required this.index,
    required this.chapter,
    required this.answered,
    required this.onTap,
  });

  final int index;
  final Chapter chapter;
  final int answered;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SketchCard(
      key: Key('chapter-${chapter.id}'),
      seed: inkSeed(chapter.id),
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ChapterDoodle(kind: chapter.doodle),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$index', style: InkText.body.copyWith(color: InkColors.brown, fontSize: 16)),
                Text(chapter.title, style: InkText.heading.copyWith(fontSize: 20)),
                const SizedBox(height: 2),
                Text(chapter.subtitle, style: InkText.body.copyWith(fontSize: 17)),
                const SizedBox(height: 6),
                if (chapter.available)
                  Text(
                    '${chapter.questionCount} questions · $answered answered',
                    style: InkText.body.copyWith(fontSize: 16, color: InkColors.blue),
                  )
                else
                  const HighlighterPill(text: 'Coming soon', color: InkColors.brown),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
