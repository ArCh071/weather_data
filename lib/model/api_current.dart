

import 'package:weatherinfo/model/locationdata.dart';
import 'package:weatherinfo/model/weatherdata.dart';

const Url = 'https://api.openweathermap.org/data/2.5/weather';

class weatherss {
  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkData networkHelper = NetworkData(
        '$Url?lat=${location.latitude}&lon=${location.longitide}&appid=${Location.apiKey}&units=metric');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }
}
