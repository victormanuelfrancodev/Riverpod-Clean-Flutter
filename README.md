# Weather Description App 🌤️

A Flutter application that provides weather information using an external API and handles errors efficiently.

## Features 🚀

- Consumes weather API to fetch weather data.
- Error handling and state management using `Riverpod` and `Dio`.
- Clean architecture with separation of data, domain, and presentation layers.

## Key Classes 📚

- `WeatherDescriptionScreen`: The main screen displaying weather information.
- `WeatherDescriptionApiDataSource`: Data source interacting with the external API.
- `WeatherDescriptionRepositoryImp`: Repository providing weather data, managing errors, and transforming the response into domain models.

## Usign Flavors 👨🏽‍🍳

This project utilizes different flavors to accommodate multiple development environments like development and production:
 
- Development Flavor: Use the following command to run the development flavor:

```
flutter run --flavor dev -t lib/main_dev.dart
```

- Production Flavor: Use the following command to run the production flavor:

```
flutter run --flavor prod -t lib/main_prod.dart
```


## Installation 🛠️

1. Clone this repository.
2. Ensure you have Flutter installed on your system. Visit [Flutter Installation](https://flutter.dev/docs/get-started/install) for more details.
3. Navigate to the project directory and run `flutter pub get` to install dependencies.
4. Run `flutter run` to start the application on a device or emulator.

## Dependencies 📦

- `flutter_riverpod`: For state management and dependency injection.
- `dio`: For making HTTP requests.
- `riverpod_annotation`, `build_runner`: For auto-generating code necessary for `Riverpod`.

## How to Contribute 🤝

Contributions are welcome! Please feel free to submit a Pull Request or open an Issue for suggestions or any bugs found.

## License 📄

This project is licensed under the MIT License - see the `LICENSE` file for details.
