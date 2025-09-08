# 📘 SwiftUI-Concepts-Tutorials-Apple

This repository contains my personal notes, exercises, and project implementations as I follow Apple's official [SwiftUI Concepts tutorial](https://developer.apple.com/tutorials/swiftui-concepts).

---

## 🎯 Purpose

The goal of this repository is to deepen my understanding of SwiftUI by exploring the fundamental building blocks presented in Apple's tutorial. Key concepts include: 

- Declarative UI
- Data flow with `@State`, `@Binding`, `@Environment`, etc.
- Layouts and adaptive design
- Navigation and transitions
- Animations
- UIKit interoperability
- Accessibility best practices
- Previews and testing
- Scalable and modular UI architecture

---

## 🗂 Repository Structure

Each subfolder represents a section, concept, or mini-project covered throughout the tutorial.

Each folder typically includes:

- Xcode project and Swift source files
- Notes or reference material (when relevant)

🏞 Landmarks Project

The `Landmarks` folder contains the first complete project from Apple’s SwiftUI Concepts tutorial. It introduces:

- Declarative layout with stacks (`HStack`, `VStack`, `ZStack`)
- Reusable components via `View` composition
- Real-time previews with `PreviewProvider`
- MapKit integration (`Map`, `MKCoordinateRegion`)
- Dynamic lists generated from data with `List` and `ForEach`
- Identifiable model structures (`Identifiable`) for seamless list rendering
- Hierarchical navigation using `NavigationView` and `NavigationLink`
- Multiple previews to test layouts on different devices and orientations (`previewDevice`, `.previewLayout`)
- Data flow and state management with `@State`, `@Binding`, `@Observable`, and `@Environment`
- A shared `ModelData` object as single source of truth (e.g., via `@EnvironmentObject`), enabling user interactions (like marking favorites) to automatically update across views
- Custom drawing with paths and shapes (`Path`, `Shape`) to render a scalable hexagonal badge symbol, demonstrating how SwiftUI integrates vector graphics with layout and styling
- Animations and transitions with implicit/explicit `withAnimation`, `.animation(_:)`, custom `.transition(_:)`, and matched geometry (`@Namespace`)
- Category-based home screen that combines a vertically scrolling list of horizontally scrolling landmark rows (e.g., `List` + `ScrollView(.horizontal)` + `HStack` / `LazyHStack`), composing complex layouts from simple containers
- Category data grouping from the model (e.g., grouping landmarks by their category) to power sectioned and carousel UIs efficiently
- Reusable views for the category experience (`CategoryHome`, `CategoryRow`, `CategoryItem`) and navigation between sections to filtered lists and detail views, keeping code modular and scalable
- Common UI controls & edit flow: `Form`/`Section`, `Toggle`, `Picker`, `DatePicker`, and `EditButton` with `editMode`, all bound to model data
- Draft-then-commit pattern: edit a draft `Profile` via bindings and **Save/Cancel** to commit or discard changes
- Interfacing with UIKit: wrap UIKit views/controllers using `UIViewRepresentable` / `UIViewControllerRepresentable`, bridge delegates via a `Coordinator`, and embed SwiftUI in UIKit with `UIHostingController`
- UIKit-powered paging in SwiftUI: build a carousel using `UIPageViewController` + `UIPageControl` bridged into SwiftUI (e.g., `PageView` / `PageViewController`), keeping SwiftUI state in sync with UIKit updates
- Creating a watchOS app: add a watchOS target and share code/assets between targets; reuse SwiftUI views with `@Environment` to drive watch navigation and detail screens
- watchOS specifics: adapt list/detail and `Map` for watch, and build a simple custom notification interface with preview payloads

This project starts with a static landmark detail screen and evolves into a data-driven list with navigation, demonstrating how SwiftUI combines views, data, and navigation in a scalable way.

---

## 🚀 Requirements

- Xcode 15 or later
- iOS 17 SDK (or latest available)
- Swift 5.9+

---

## 👨🏻‍💻 Author

Carlos Alonso Camiña  
[GitHub](https://github.com/calonsocamina) · [LinkedIn](https://www.linkedin.com/in/carlosalonsocamina)

---

## 📚 References

- [Apple – SwiftUI Concepts](https://developer.apple.com/tutorials/swiftui-concepts)
- [SwiftUI Documentation](https://developer.apple.com/documentation/swiftui)
