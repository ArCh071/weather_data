import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude;
  double? longitide;
  static String apiKey = 'a510b6c6fbfa4ca7373c78241c0dee64';
  int? status;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      latitude = position.latitude;
      longitide = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
