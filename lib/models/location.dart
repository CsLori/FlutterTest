import 'location_data.dart';

class Location {
  final int id;
  String name;
  String imagePath;
  final List<LocationData> data;

  Location(this.id, this.name, this.imagePath, this.data);

  static Location fetchByID(int locationID) {
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }

  static List<Location> fetchAll() {
    return [
      Location(1, 'Beautiful field', 'assets/images/bg1.jpg', [
        LocationData(
            'Summary', 'This is just the nicest place i have ever been to'),
        LocationData('How to get there',
            'Just get into the first taxi from the airport and enjoy the ambience while you are travelling')
      ]),
      Location(2, 'Amazing cactus in the desert', 'assets/images/bg2.jpg', [
        LocationData(
            'Summary', 'This is just the nicest place i have ever been to'),
        LocationData('How to get there',
            'Just get into the first taxi from the airport and enjoy the ambience while you are travelling')
      ]),
      Location(3, 'Nice city view', 'assets/images/bg3.jpg', [
        LocationData(
            'Summary', 'This is just the nicest place i have ever been to'),
        LocationData('How to get there',
            'Just get into the first taxi from the airport and enjoy the ambience while you are travelling')
      ]),
    ];
  }
}
