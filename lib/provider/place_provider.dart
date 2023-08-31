import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_using_native_features/model/place.dart';

class PlaceProvider extends StateNotifier<List<Place>> {
  List<Place> places = [];
  PlaceProvider() : super([]);

  void addPlace(Place place) {
    places.add(place);
  }
}
