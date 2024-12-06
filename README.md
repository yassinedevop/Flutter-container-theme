# Custom Button Flutter App

A sleek and intuitive Flutter application for designing and previewing customizable button-like containers. Customize attributes such as colors, borders, text, and more in real-time, and easily integrate the generated `Container` widget code into your Flutter projects.

## Features

- **Interactive Customization:**
  - Adjust container background color and shade using a vibrant color palette.
  - Modify border color, thickness, and radius with simple sliders.
  - Edit display text dynamically.
- **Real-Time Preview:** Visualize your container changes instantly in a responsive UI.
- **Code Generation:** Automatically generates clean and reusable Flutter `Container` widget code. Easily copy it to your clipboard for integration.
- **User-Friendly Experience:**
  - Minimalist design with smooth navigation.
  - Built-in light and dark themes for accessibility.

## Demo

### App Preview:
![](screenshots/custom_container.mp4)
### Copy Code to Clipboard:
![](screenshots/copy_to_clipboard.mp4)


## How It Works

1. **Edit Text:** Tap on the container to modify the display text.
2. **Customize Appearance:** 
   - Adjust sliders to fine-tune border thickness and radius.
   - Select colors for the container and border using the interactive palette.
3. **Generate Code:** Preview the widget's Flutter code and copy it with a single tap.

## Getting Started

### Prerequisites

Ensure your development environment includes:
- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Dart](https://dart.dev/get-dart)
- A code editor like [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio).

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/custom-button-flutter-app.git
   ```
2. Navigate to the project folder:
   ```bash
   cd custom-button-flutter-app
   ```
3. Fetch dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

## Dependencies

The app uses the following Flutter packages:
- [flutter](https://pub.dev/packages/flutter) - Core Flutter framework.
- [google_fonts](https://pub.dev/packages/google_fonts) - For custom font styling.

## Sample Code

Here’s an example of the code generated by the app for a customized container:

```dart
Container(
  padding: const EdgeInsets.all(16),
  decoration: BoxDecoration(
    color: Colors.blue.withOpacity(0.5),
    borderRadius: BorderRadius.circular(8),
    border: Border.all(color: Colors.blue, width: 1),
  ),
  child: Text(
    'Custom Text',
    style: Theme.of(context).textTheme.bodyLarge,
  ),
);
```

## Roadmap

- **Upcoming Features:**
  - Add gradient background support.
  - Include font customization for text.
  - Expand theme options with more dynamic settings.

## Contribution

We welcome contributions to make this app even better! To get started:
1. Fork the repository.
2. Create a new branch for your feature:
   ```bash
   git checkout -b feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add your message here"
   ```
4. Push to the branch:
   ```bash
   git push origin feature-name
   ```
5. Open a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.


Craft your next UI effortlessly with **Custom Button Flutter App**! 🚀
