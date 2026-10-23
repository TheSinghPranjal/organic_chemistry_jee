import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class QProgress {
  const QProgress({
    this.answered = false,
    this.correct = false,
    this.response = '',
    this.flagged = false,
  });

  final bool answered;
  final bool correct;
  final String response;
  final bool flagged;

  QProgress copyWith({
    bool? answered,
    bool? correct,
    String? response,
    bool? flagged,
  }) {
    return QProgress(
      answered: answered ?? this.answered,
      correct: correct ?? this.correct,
      response: response ?? this.response,
      flagged: flagged ?? this.flagged,
    );
  }

  Map<String, dynamic> toJson() => {
        'answered': answered,
        'correct': correct,
        'response': response,
        'flagged': flagged,
      };

  factory QProgress.fromJson(Map<String, dynamic> json) {
    return QProgress(
      answered: json['answered'] == true,
      correct: json['correct'] == true,
      response: json['response'] as String? ?? '',
      flagged: json['flagged'] == true,
    );
  }
}

class ProgressStore extends ChangeNotifier {
  ProgressStore({this.persist = true});

  static const storageKey = 'organic_notebook_progress_v1';

  final bool persist;
  final Map<String, QProgress> _items = {};
  SharedPreferences? _prefs;

  QProgress get(String id) => _items[id] ?? const QProgress();

  int answeredCount(Iterable<String> ids) => ids.where((id) => get(id).answered).length;

  int flaggedCount(Iterable<String> ids) => ids.where((id) => get(id).flagged).length;

  Future<void> load() async {
    if (!persist) return;
    _prefs = await SharedPreferences.getInstance();
    final raw = _prefs!.getString(storageKey);
    if (raw == null || raw.isEmpty) return;
    final decoded = jsonDecode(raw);
    if (decoded is! Map<String, dynamic>) return;
    _items
      ..clear()
      ..addAll(
        decoded.map(
          (key, value) => MapEntry(
            key,
            QProgress.fromJson(Map<String, dynamic>.from(value as Map)),
          ),
        ),
      );
    notifyListeners();
  }

  Future<void> markAnswered(String id, {required bool correct, required String response}) async {
    final current = get(id);
    if (current.answered) return;
    _items[id] = current.copyWith(answered: true, correct: correct, response: response);
    notifyListeners();
    await _save();
  }

  Future<void> toggleFlag(String id) async {
    final current = get(id);
    _items[id] = current.copyWith(flagged: !current.flagged);
    notifyListeners();
    await _save();
  }

  Future<void> _save() async {
    if (!persist) return;
    _prefs ??= await SharedPreferences.getInstance();
    final encoded = jsonEncode(_items.map((key, value) => MapEntry(key, value.toJson())));
    await _prefs!.setString(storageKey, encoded);
  }
}

class ProgressScope extends InheritedNotifier<ProgressStore> {
  const ProgressScope({
    super.key,
    required ProgressStore store,
    required super.child,
  }) : super(notifier: store);

  static ProgressStore of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<ProgressScope>();
    assert(scope != null, 'ProgressScope is missing');
    return scope!.notifier!;
  }
}
