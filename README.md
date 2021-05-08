# PokedexApp - Pokemon overview app using PokeAPI
Main goal of this project was working with REST API in flutter.

## About
PokedexApp is a Flutter application that gets a list of season one Pokemon from PokeAPI and shows them in a simple grid. PokeAPI is based on the REST architecture and the responses are in the JSON format. Http package and Dart's JSON decoder were for receiving data from the API. 

## Setup
  1. Clone the repository using the link below:
  ```
  https://github.com/kforjan/rma-lv3-bird-count-app.git
  ```
  2. Go to the project root and execute the following commands:
  ```
  flutter pub get
  flutter run
  ```

## Used packages
 * [get_it](https://pub.dev/packages/get_it) &nbsp; - &nbsp; service locator for dependency injection
 * [http](https://pub.dev/packages/http) &nbsp; - &nbsp; making HTTP requests
 * [flutter_svg](https://pub.dev/packages/flutter_svg) &nbsp; - &nbsp; widget for rendering SVGs


## Preview

Normal functionality of the application          |  Application functionality without internet connection
:-------------------------:|:-------------------------:
![Normal functionality of the application](https://s3.gifyu.com/images/pokemon-basic.gif)  |  ![Application functionality without internet connection](https://s3.gifyu.com/images/pomemon-no-internet.gif))

## Possible improvements
 * Error handling
 * Storing images locally after the first download and reducing number of API calls
 * More details for each Pokemon
 * State management
