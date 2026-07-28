# ☕ Coffee Shop App

A beautifully designed and performant Coffee Shop mobile application built with Flutter
It delivers a modern and seamless user experience for discovering and exploring a wide variety of coffee products, with a strong focus on clean UI, performance, and best practices

---
<img width="570" height="929" alt="Screenshot 2026-05-12 212036" src="https://github.com/user-attachments/assets/9440a43e-1467-43c6-a325-5bd472f67b80" />

## 🚀 Key Features

### 🔍 Discovery & Home

* Interactive coffee discovery screen
* Dynamic category tabs for filtering
* Detailed product grid and cards
* Beautiful coffee header and greetings
* Intuitive custom bottom navigation bar
* Modern search bar implementation

### 🎨 Modern UI & Theme

* Custom typography using Google Fonts
* Extensive Core Theme setup (Colors, Text Styles)
* Fully responsive layouts for different screen sizes

### ✨ Engaging Experience

* Smooth page transitions
* Clean, aesthetic, and professional design
* Optimized image loading and presentation

---

## 🛠️ Tech Stack & Architecture

* **Framework:** Flutter (Dart)
* **Architecture:** Feature-Based Architecture (Core, Data & Presentation Layers)
* **State Management:** BLoC / Cubit (`flutter_bloc`)
* **Design System:** Custom theming and Google Fonts
* **Icons:** Cupertino Icons & Material Icons

---

## 🏗️ Architectural Overview

```text
project_root/
│
├── assets/
│   └── images/          # App images & product assets
│
├── lib/
│   ├── core/
│   │   └── theme/       # App Colors, Text Styles, & App Themes
│   │
│   ├── features/
│   │   └── discovery/
│   │       ├── data/
│   │       │   └── models/        # Coffee product models
│   │       │
│   │       └── presentation/
│   │           ├── cubit/         # Discovery State Management (Cubit)
│   │           ├── screens/       # Discovery Screen
│   │           └── widgets/       # Reusable UI components (SearchBar, ProductGrid, etc.)
│   │
│   └── main.dart          # Entry point
│
├── pubspec.yaml
└── README.md

```
