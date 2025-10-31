
# Game Analysis App

A cross-platform Flutter application for real-time football (soccer) game analysis. The app allows users to track and visualize key match statistics, including passes, shots, fouls, and more, with interactive charts and a built-in timer.

## Features

- **Real-Time Match Tracking:**  
	Record successful/unsuccessful passes, shots on/off target, balls lost/recovered, corners, free kicks, offsides, fouls committed/suffered, and more during a football match.

- **Game Timer:**  
	Built-in timer with automatic half-time detection and visual cues.

- **Statistical Visualization:**  
	View interactive bar charts summarizing match statistics at half-time.

- **Intuitive UI:**  
	Simple navigation with clear buttons and floating action controls.

- **Multi-Platform Support:**  
	Runs on Android, iOS, Windows, Linux, macOS, and Web.

## Screenshots

*(Add screenshots of the main screens here for better presentation.)*

## Getting Started

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (>=3.2.3 <4.0.0)
- Dart SDK (compatible with Flutter version)
- A device or emulator for your target platform

### Installation

1. **Clone the repository:**
	 ```sh
	 git clone <your-repo-url>
	 cd game_analysis_app
	 ```

2. **Install dependencies:**
	 ```sh
	 flutter pub get
	 ```

3. **Run the app:**
	 ```sh
	 flutter run
	 ```

### Running Tests

To execute widget tests:
```sh
flutter test
```

## Project Structure

- `lib/`  
	Main application code:
	- `main.dart` – App entry point
	- `home_screen.dart` – Home screen with navigation
	- `game_screen.dart` – Main game tracking interface
	- `half_time.dart` – Half-time summary and charts
	- `chart.dart`, `chart_bar.dart` – Chart rendering logic
	- `timer.dart` – Game timer widget

- `test/`  
	Widget and unit tests

- Platform folders:  
	`android/`, `ios/`, `web/`, `windows/`, `linux/`, `macos/`

## Dependencies

- [Flutter](https://flutter.dev/)
- [charts_flutter](https://pub.dev/packages/charts_flutter) – For data visualization
- [cupertino_icons](https://pub.dev/packages/cupertino_icons) – iOS style icons

## Customization

- To add or modify tracked statistics, edit `game_screen.dart` and `half_time.dart`.
- To change chart styles, update `chart.dart`.

## Contributing

Contributions are welcome! Please open issues or submit pull requests for improvements and bug fixes.

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.
