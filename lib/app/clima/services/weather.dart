import '../services/location.dart';
import '../services/networking.dart';

class WeatherModel {

  Future<dynamic> getCityWeather(String cityName) async {
      NetworkHelper networkHelper = NetworkHelper(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=beb65d2538b4f5ea3eeb60cb51e9a3e2&units=metric',
      );
      return await networkHelper.getData();
  }

  Future<dynamic> getLocationWeather() async {
    try {
      final Location location = Location();
      await location.getCurrentLocation();
      NetworkHelper networkHelper = NetworkHelper(
        'https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=beb65d2538b4f5ea3eeb60cb51e9a3e2&units=metric',
      );
      return await networkHelper.getData();
    } catch (e) {
      return null;
    }
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
