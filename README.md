# Organic notebook

A Flutter learning notebook for JEE organic chemistry. The home screen lists twelve chapters. General Organic Chemistry, Isomerism, Hydrocarbons, Halides, Alcohols and Ethers, Carbonyl Compounds, Carboxylic Acids and Derivatives, Amines, and Aromatic Hydrocarbons are filled in; the other chapters are marked coming soon.

Questions, options, and explanations in this app are original. General Organic Chemistry is organised as Level 1, Level 2, and Level 3, each with the exercises in that level. Isomerism is organised as Exercise 1 (Levels 1 to 3) and then Exercises 2 to 5. Hydrocarbons, Halides, Alcohols and Ethers, Carbonyl Compounds, Carboxylic Acids and Derivatives, and Amines are each organised as Exercise 1 (Levels 1 and 2) and then Exercises 2 to 5. Aromatic Hydrocarbons is organised as Exercise 1 (Levels 1, 2, and 3) and then Exercises 2 to 5. Phenols are part of Alcohols and Ethers. A later chapter can drop into the same screens.

## Run

```bash
flutter pub get
flutter run
```

Progress (answered questions and review flags) is stored on the device with `shared_preferences`.

## Add a chapter

1. Add `lib/data/chapters/<id>.dart` that exports a `Chapter` with levels, exercises, and questions.
2. Replace the matching `Chapter.comingSoon(...)` entry in `lib/data/catalog.dart`.

Question kinds are single-correct, multi-correct, matching, and integer. A passage question is a single-correct question with `passage` set. Structure drawings are `MolSketch` values painted in `lib/sketch`, not image files.
