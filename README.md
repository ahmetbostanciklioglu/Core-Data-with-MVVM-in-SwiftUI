<div align="center">

# 🗄️ Core Data with MVVM in SwiftUI

**A concise, runnable example of persisting data with Core Data using the MVVM pattern in SwiftUI.**

![Platform](https://img.shields.io/badge/Platform-iOS-000000?style=flat-square&logo=apple)
![Swift](https://img.shields.io/badge/Swift-5.0-FA7343?style=flat-square&logo=swift&logoColor=white)
![SwiftUI](https://img.shields.io/badge/SwiftUI-0055FF?style=flat-square&logo=swift&logoColor=white)
![Core Data](https://img.shields.io/badge/Core%20Data-6E48AA?style=flat-square)
![Xcode](https://img.shields.io/badge/Xcode-16-147EFB?style=flat-square&logo=xcode&logoColor=white)
![Stars](https://img.shields.io/github/stars/ahmetbostanciklioglu/iOS-Core-Data?style=flat-square&color=6E48AA)
![Last Commit](https://img.shields.io/github/last-commit/ahmetbostanciklioglu/iOS-Core-Data?style=flat-square&color=4776E6)

</div>

## 📖 Overview

This is a small learning project that shows how to combine **Core Data** persistence with the **MVVM** architecture in a **SwiftUI** app. The sample builds a simple "Fruits" list where entries are saved to disk with `NSPersistentContainer`, so the data survives app restarts. It is intentionally minimal so the wiring between the view, the view model, and the Core Data stack stays easy to follow.

## ✨ Features

- 📝 **Add items** — type a fruit name and save it as a `FruitEntity` in Core Data.
- 📋 **List items** — fetched entities are shown in a SwiftUI `List`.
- 🗑️ **Delete items** — swipe to delete a row, which removes it from the store.
- 💾 **Persistent storage** — data is loaded and saved through `NSPersistentContainer` and its `viewContext`.
- 🧩 **MVVM structure** — a `CoreDataViewModel` (`ObservableObject`) owns the container and CRUD logic, keeping the views free of business logic.

## 🚀 Getting Started

```bash
git clone https://github.com/ahmetbostanciklioglu/iOS-Core-Data.git
cd iOS-Core-Data
open "Core Data with MVVM in SwiftUI.xcodeproj"
```

Then select an iOS Simulator (or a connected device) in Xcode and press **⌘R** to build and run.

## 📋 Requirements

- iOS 18.0 or later
- Xcode 16 or later
- Swift 5.0

## 🧑‍💻 Author

**Ahmet Bostancıklıoğlu** — [@ahmetbostanciklioglu](https://github.com/ahmetbostanciklioglu) · ahmetbostancikli@gmail.com

> ⭐ If this helped you, consider giving the repo a star!
