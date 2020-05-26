import 'package:geolocator/geolocator.dart';

extension APostion on Position {
  Position updateTime(Position p) {
    return new Position(
      longitude: p.longitude,
      latitude: p.latitude,
      accuracy: p.accuracy,
      altitude: p.altitude,
      speed: p.speed,
      speedAccuracy: p.speedAccuracy,
      heading: p.heading,
      timestamp: DateTime.now(),
    );
  }
}
