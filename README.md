# Country List App with Flag Images

A Flutter app that demonstrates how to create a list of countries along with their flag images

## Getting Started

### Prerequisites

- Flutter SDK: Make sure you have Flutter installed. If not, follow the official installation guide: https://flutter.dev/docs/get-started/install
- An integrated development environment (IDE) like Android Studio or Visual Studio Code is recommended.

### Installation

1. Create new flutter project with flutter create:
   ```
   flutter create country_flag_list_view
   ```

2. Navigate to the project directory:
   ```
   cd country_list_app
   ```

3. Install dependencies:
   ```sh
   flutter pub get
   ```

### Downloading Flag Images

1. Visit a website that offers flag images for download, such as "https://flagdownload.com/" or use the provided "Flag images/" directory.

2. Download flag images for the countries you want to display in your app. Save each image with the country name as the filename (e.g., `US.png` for the United States).

### Adding Flag Images to Assets

1. Create a directory named `assets` in the root of your project, if it doesn't exist.

2. Move the downloaded flag images to the `assets` directory.

3. Open your `pubspec.yaml` file and add the following lines under the `flutter` section to configure the assets:
   
   ```yaml
   flutter:
     assets:
       - assets/
   ```

### Usage

1. Open the `lib/main.dart` file.

2. Update the `Country` class decleration for the countries you have downloaded flag images for.

3. Run the app:
   ```sh
   flutter run
   ```

4. The app will display a list of countries along with their corresponding flag images.
