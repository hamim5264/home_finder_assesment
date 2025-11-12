# 🏠 Home Finder App

A modern **real estate Flutter application** featuring a **beautiful animated side menu**, elegant UI components, and a clean modular architecture.  
Built as part of the assessment submission for the **Flutter Developer role** — focused on scalability, performance, and pixel-perfect design fidelity.

---

## 🚀 Features

✅ **Animated Side Menu**
- Smooth open/close transition using `AnimatedPositioned` and `AnimatedContainer`.
- Realistic parallax-style animation for the main content.
- Fully reactive with `GetX` state management.

✅ **Pixel-Perfect UI**
- Menu chip selector fully flush with the left edge, rounded right corners.
- Subtle shadow and spacing for a clean, minimal look.
- Light dividers after every three items, exactly matching Figma.

✅ **Optimized Architecture**
- Feature-based folder structure for scalability and readability.
- Separation of concerns between UI (`widgets`), logic (`controllers`), and screens.
- Uses `GetX` for efficient reactive state management.

✅ **Responsive Layout**
- Works seamlessly across multiple screen sizes.
- Animations scale dynamically based on screen width.

---


### 📂 Explanation
- **core/** → design system (colors, typography, utilities)
- **features/** → organized per module (home, menu, etc.)
- **controllers/** → business logic using GetX
- **widgets/** → reusable UI components
- **menu_wrapper.dart** → handles animation + gestures for opening and closing menu

---

## ⚙️ Technologies Used

| Category | Stack |
|-----------|--------|
| Framework | Flutter (3.24+) |
| State Management | GetX |
| Animation | AnimatedContainer, AnimatedPositioned |
| Language | Dart |
| IDE | Visual Studio Code / Android Studio |

---

## 🧠 Key Implementation Details

### 1️⃣ Menu Animation Logic
- Controlled via `SideMenuController` using an observable `isMenuOpen` variable.
- `AnimatedPositioned` translates and scales the home screen to reveal the menu.

```dart
transform: Matrix4.identity()
  ..translate(isOpen ? width * 0.40 : 0.0)
  ..scale(isOpen ? 0.96 : 1.0),

🧰 Installation & Run Locally
# Clone this repository
git clone https://github.com/<your-username>/home_finder_app.git

# Navigate into the folder
cd home_finder_app

# Get dependencies
flutter pub get

# Run the app
flutter run

