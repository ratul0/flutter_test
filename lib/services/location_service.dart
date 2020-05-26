import 'package:geolocator/geolocator.dart';

class LocationService {
  final Geolocator _geoLocator = Geolocator();
  final LocationOptions _locationOptions = LocationOptions(
    accuracy: LocationAccuracy.bestForNavigation,
    distanceFilter: 1,
    //timeInterval: 500,
  );
  Stream<Position> getPositionStream() {
    return _geoLocator.getPositionStream(_locationOptions);
  }
}
