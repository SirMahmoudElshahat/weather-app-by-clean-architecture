# Weather App

A simple Flutter application that fetches weather data using Clean Architecture principles. This project demonstrates a modular structure with separated layers (Presentation, Domain, and Data) without a UI, focusing on the core logic of retrieving weather information from an API.

## Project Overview

This app is built to showcase the implementation of **Clean Architecture** in Flutter. It fetches weather data (e.g., city name and temperature) from the OpenWeatherMap API and prints it to the console. The project is structured into three main layers:
- **Domain**: Contains business logic, entities, and use cases.
- **Data**: Handles data sources, models, and repository implementations.
- **Core**: Stores constants and shared utilities.

No UI or State Management is included, keeping the focus on the architectural setup.
