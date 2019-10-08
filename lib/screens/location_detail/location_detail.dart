import 'package:flutter/material.dart';
import 'text_section.dart';
import 'image_banner.dart';
import '../../models/location.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;

  LocationDetail(this._locationID);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchByID(_locationID);
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(location.imagePath),
          ]..addAll(textSection(location))),
    );
  }

  List<Widget> textSection(Location location) {
    return location.data
        .map((data) => TextSection(data.title, data.text))
        .toList();
  }
}
