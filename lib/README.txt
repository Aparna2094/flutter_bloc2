The project is organized into several folders following Clean Architecture principles:

lib/: Main source code directory.
data/: Contains data sources, models, and repository implementations.
datasource/: API client and data source interfaces.
models/: Data models and serialization.
repositories/: Repository implementations.
domain/: Contains business logic.
entities/: Business entities.
repository/: Repository interfaces.
usecases/: Use cases for CRUD operations.
presentation/: User interface code.
bloc/: BLoC (Business Logic Component) for state management.
pages/: Screens and widgets.
injection_container.dart: Dependency injection setup.



# Flutter CRUD Application

A Flutter application that demonstrates CRUD (Create, Read, Update, Delete) operations using Clean Architecture principles and BLoC state management pattern.
 The app interacts with the JSONPlaceholder API to manage posts.

## Table of Contents

- [Features](#features)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Running the Project](#running-the-project)


## Features

- **Create**: Add new posts.
- **Read**: View a list of posts.
- **Update**: Edit existing posts.
- **Delete**: Remove posts.
- **State Management**: Uses BLoC for state management.
- **Clean Architecture**: Follows principles of Clean Architecture for maintainable code.

## Project Structure

The project is organized into several folders following Clean Architecture principles:

- **`lib/`**: Main source code directory.
  - **`data/`**: Contains data sources, models, and repository implementations.
    - **`datasource/`**: API client and data source interfaces.
    - **`models/`**: Data models and serialization.
    - **`repositories/`**: Repository implementations.
  - **`domain/`**: Contains business logic.
    - **`entities/`**: Business entities.
    - **`repository/`**: Repository interfaces.
    - **`usecases/`**: Use cases for CRUD operations.
  - **`presentation/`**: User interface code.
    - **`bloc/`**: BLoC (Business Logic Component) for state management.
    - **`pages/`**: Screens and widgets.
  - **`injection_container.dart`**: Dependency injection setup.

## Getting Started

### Prerequisites

Ensure you have the following installed:
- **Flutter SDK**: [Installation Guide](https://flutter.dev/docs/get-started/install)
- **Dart SDK**: Included with Flutter SDK
- **A Code Editor**: [Visual Studio Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio)
- **A Device or Emulator**: For running the app


GITHUB_LINK:https://github.com/Aparna2094/flutter_bloc2