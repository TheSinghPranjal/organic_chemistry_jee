import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

import 'screens/home_screen.dart';
import 'state/progress_store.dart';
import 'theme/ink.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SemanticsBinding.instance.ensureSemantics();
  final store = ProgressStore();
  await store.load();
  runApp(OrganicNotebookApp(store: store));
}

class OrganicNotebookApp extends StatelessWidget {
  const OrganicNotebookApp({super.key, required this.store});

  final ProgressStore store;

  @override
  Widget build(BuildContext context) {
    return ProgressScope(
      store: store,
      child: MaterialApp(
        title: 'Organic notebook',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: InkColors.paper,
          fontFamily: 'PatrickHand',
          colorScheme: ColorScheme.fromSeed(seedColor: InkColors.blue),
          splashFactory: NoSplash.splashFactory,
        ),
        scrollBehavior: const _QuietScrollBehavior(),
        home: const HomeScreen(),
      ),
    );
  }
}

class _QuietScrollBehavior extends MaterialScrollBehavior {
  const _QuietScrollBehavior();

  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
