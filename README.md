<div align="center">

# ☕ Coffee Shop App

**A beautifully designed and performant Coffee Shop mobile application built with Flutter.**

[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)](#)
[![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)](#)
[![Clean Architecture](https://img.shields.io/badge/Architecture-Feature--Based-success?style=for-the-badge)](#)
[![UI/UX](https://img.shields.io/badge/UI%2FUX-Modern%20%26%20Clean-orange?style=for-the-badge)](#)

It delivers a modern and seamless user experience for discovering and exploring a wide variety of coffee products, with a strong focus on clean UI, performance, and best practices.

 ![Coffee Shop App Banner]( <img width="570" height="929" alt="Screenshot 2026-05-12 212036" src="https://github.com/user-attachments/assets/a9fdb648-9e60-4914-871c-0c21923fa90d" />
)

</div>

---

## 🚀 Key Features

### 🔍 Discovery & Home
* **Interactive Discovery:** Engaging coffee discovery screen.
* **Dynamic Filtering:** Category tabs for seamless product filtering.
* **Detailed Views:** Intuitively designed product grid and cards.
* **Personalized UI:** Beautiful coffee header and greetings.
* **Custom Navigation:** Intuitive custom bottom navigation bar.
* **Smart Search:** Modern search bar implementation for quick access.

### 🎨 Modern UI & Theme
* **Custom Typography:** Beautiful text rendering using Google Fonts.
* **Core Theme System:** Extensive setup for Colors, Text Styles, and App Themes.
* **Responsive Design:** Fully adaptive layouts for different screen sizes.

### ✨ Engaging Experience
* **Fluid Animations:** Smooth page transitions across the app.
* **Aesthetic Appeal:** Clean, aesthetic, and highly professional design.
* **Optimized Media:** Fast and optimized image loading and presentation.

---

## 🛠️ Tech Stack & Architecture

* **Framework:** Flutter (Dart)
* **Architecture:** Feature-Based Clean Architecture (Core, Data & Presentation Layers)
* **State Management:** BLoC / Cubit (`flutter_bloc`)
* **Design System:** Custom dynamic theming & Google Fonts
* **Icons:** Cupertino Icons & Material Icons

---

## 🏗️ Architectural Overview

The project structure is highly scalable and follows feature-driven development principles:

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
│   └── main.dart        # Entry point & App Initialization
│
├── pubspec.yaml
└── README.md
