# Meal Tracker

Meal Tracker is a Flutter-based mobile application that helps users track their meals by recording meal names, calorie counts, times, and photos. The app features a clean UI with sorting capabilities, local storage using Hive, and a responsive design suitable for various screen sizes. This project supports multiple flavors for different build configurations.

## Introduction

This project demonstrates a modern Flutter application architecture using BLoC pattern for state management, Hive for local persistence, and Flutter ScreenUtil for responsive design. It includes flavor support for different environments/configurations. Users can:
- Add new meals with details (name, calories, time, photo)
- View meal history grouped by date
- Sort meals by name, calories, or time
- Delete existing meals
- See total calories per day

The app features a visually appealing interface with shimmer loading effects and a consistent theme.

## Tools/Frameworks Used

- **Flutter**: Cross-platform UI framework
- **Dart**: Programming language
- **flutter_bloc**: State management using BLoC pattern
- **freezed**: Code generation for immutable state classes
- **Hive**: Lightweight NoSQL database for local storage
- **flutter_screenutil**: Screen size adaptation and responsive design
- **shimmer**: Loading animation effects

## Demo

| Screens        | Screens               
| ------------- |:--------------------------:
|![image1](https://i.imgur.com/ciUkimB.png)|![image2](https://i.imgur.com/wkldN8u.png) 
|![image8](https://i.imgur.com/2EVmskH.png)|![image3](https://i.imgur.com/lwGI2tH.png)
|![image5](https://i.imgur.com/Xe285Qn.png)|![image4](https://i.imgur.com/HFGTyOf.png) 
|![image6](https://i.imgur.com/hUZYLqc.png)|![image7](https://i.imgur.com/paVG4MP.png) 
## How to Run the App

### Prerequisites
- Flutter SDK installed (version 3.0.0 or higher recommended)
- Dart SDK (comes with Flutter)
- Android Studio/Xcode for emulator/simulator
- Git

### Flavors
The app supports multiple flavors:
- **prod**:Production- Basic setup with default configuration
- **dev**: for development- Includes BLoC observer for debugging,etc...

### Setup Steps
1. **Clone the Repository**
```bash
git clone https://github.com/yourusername/meal-tracker.git
cd meal-tracker
```

2. **Install Dependencies**
```bash
flutter pub get
```

3. **Generate Freezed Files**
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

4. **Run the App**
- Connect a device or start an emulator/simulator
- Run with specific flavor:
```bash
# Development flavor
flutter run --flavor dev -t lib/main.dart

# Production flavor (with BLoC observer)
flutter run --flavor prod -t lib/main_prod.dart
```

5. **Build for Release**
```bash
# Development APK
flutter build apk --flavor dev -t lib/main.dart

# Production APK
flutter build apk --flavor prod -t lib/main_prod.dart

```

### Flavor Configuration
Add the following to your `android/app/build.gradle`:
```gradle
flavorDimensions += "default"
    productFlavors {
        create("dev") {
            dimension = "default"
            resValue(
                type = "string",
                name = "app_name",
                value = "Meal Tracker Dev")
            applicationIdSuffix = ".dev"
        }
        create("prod") {
            dimension = "default"
            resValue(
                type = "string",
                name = "app_name",
                value = "Meal Tracker prod")
            applicationIdSuffix = ".prod"
        }
    }
```

For iOS, configure schemes in Xcode with corresponding bundle identifiers.

### Troubleshooting
- If you encounter build issues, try:
```bash
flutter clean
flutter pub get
```

## Approach to Responsiveness

The app implements a comprehensive responsive design strategy using:

1. **Flutter ScreenUtil**
   - Base design size: 360x690 pixels
   - Configuration:
     ```dart
     ScreenUtilInit(
       designSize: const Size(360, 690),
       minTextAdapt: true,
       splitScreenMode: true,
       // ...
     )
     ```
   - Usage of `.h`, `.w`, and `.sp` extensions for dimensions and text sizes

2. **Flexible Layouts**
   - Uses `Expanded` and `Flexible` widgets for dynamic sizing
   - Implements `MediaQuery` for screen-aware layouts
   - Column and Row widgets with proper spacing

3. **Adaptive UI**
   - Minimum text adaptation enabled
   - Responsive padding and margins using ScreenUtil

