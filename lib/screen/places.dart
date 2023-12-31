import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_using_native_features/screen/add_place.dart';
import 'package:flutter_using_native_features/widget/place_list.dart';

class PlacesScreen extends ConsumerWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Places'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (builder) {
                  return AddPlaceScreen();
                }));
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: PlaceList(places: []),
    );
  }
}
