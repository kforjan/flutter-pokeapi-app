# PokedexApp - Pokemon overview app using PokeAPI
The main goal of this project was to use REST API in Flutter.

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
 * [get_it](https://pub.dev/packages/get_it)
 * [http](https://pub.dev/packages/http)
 * [flutter_svg](https://pub.dev/packages/flutter_svg)


## Preview

Normal functionality of the application          |  Application functionality without internet connection
:-------------------------:|:-------------------------:
![Normal functionality of the application](https://s3.gifyu.com/images/pokemon-basic.gif)  |  ![Application functionality without internet connection](https://s3.gifyu.com/images/pomemon-no-internet.gif)

## Possible improvements
 * Error handling
 * Storing images locally after the first download and reducing number of API calls
 * More details for each Pokemon
 * State management
