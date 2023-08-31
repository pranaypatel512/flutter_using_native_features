import 'package:flutter/material.dart';
import 'package:flutter_using_native_features/model/place.dart';

class PlaceList extends StatelessWidget {
  const PlaceList({super.key, required this.places});
  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return Center(
        child: Text('No places yet!',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Theme.of(context).colorScheme.onBackground)),
      );
    }

    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(places[index].title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground)),
        );
      },
      itemCount: places.length,
    );
  }
}
