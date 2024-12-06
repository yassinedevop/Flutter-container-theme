# Custom Button Flutter App

A Flutter application designed for customizing and previewing button-like containers. Users can modify container attributes such as color, border, text, and more, in real-time. The app also allows you to copy the container's configuration code for use in your Flutter projects.

## Features

- **Interactive UI:** Modify container attributes such as:
  - Background color and shade.
  - Border color, thickness, and radius.
  - Display text.
- **Live Preview:** Instantly see how the container looks as you adjust settings.
- **Code Generator:** Generates the Flutter `Container` widget code for the customized container. Copy it to your clipboard with a single tap.

## Screenshots




## How It Works

1. Tap on the container to edit the display text.
2. Use sliders to adjust border thickness and radius.
3. Choose colors for the container and its border using the provided color palette.
4. Preview the generated Flutter code for the container and copy it to your clipboard.

## Getting Started

### Prerequisites

Ensure you have the following installed on your machine:
- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Dart](https://dart.dev/get-dart)
- A code editor such as [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio).

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/custom-button-flutter-app.git
   ```
2. Navigate to the project directory:
   ```bash
   cd custom-button-flutter-app
   ```
3. Fetch the dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

## Dependencies

- [flutter](https://pub.dev/packages/flutter)
- [google_fonts](https://pub.dev/packages/google_fonts)


## Code Example

A sample generated container code:
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

## Contribution

Contributions are welcome! Feel free to submit a pull request or open an issue to suggest improvements.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
