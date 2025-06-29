# AI Chat App

A cross-platform Flutter application that lets you chat with an AI powered by Hugging Face's DialoGPT model.

## Features

- Send a message and receive an AI-generated reply.
- Toggle between light and dark themes.
- Runs on mobile, desktop and the web.

## Getting Started

### Prerequisites

- [Flutter](https://docs.flutter.dev/get-started/install) SDK installed
- A Hugging Face access token

### Running

1. Fetch the project dependencies:
   ```bash
   flutter pub get
   ```
2. Replace the `apiKey` constant in `lib/api_service.dart` with your own token.
3. Start the application on a connected device or simulator:
   ```bash
   flutter run
   ```

### Testing

Execute the analyzer and run the widget tests:

```bash
flutter analyze
flutter test
```

## Project Structure

```
lib/               Dart source files
  main.dart        Application entry point
  api_service.dart API requests to DialoGPT
  chat_message.dart Message model
```

## License

This project is provided for educational use.
