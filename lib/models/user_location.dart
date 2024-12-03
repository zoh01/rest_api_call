class UserLocation {
  final String city;
  final String state;
  final String country;
  final String postcode;
  final LocationStreet street;
  final LocationCoordinates coordinates;
  final LocationTimeZone timezone;

  UserLocation({
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.street,
    required this.coordinates,
    required this.timezone,
  });

  factory UserLocation.fromMap(Map<String, dynamic> json) {
    final street = LocationStreet.fromMap(json['street']);

    final coordinates = LocationCoordinates.fromMap(json['coordinates']);

    final timeZone = LocationTimeZone.fromMap(json['timezone']);

    /// User Locator
    return UserLocation(
      city: json['city'],
      state: json['state'],
      country: json['country'],

      /// Some post code are string
      postcode: json['postcode'].toString(),
      street: street,
      coordinates: coordinates,
      timezone: timeZone,
    );
  }
}

class LocationStreet {
  final int number;
  final String name;

  LocationStreet({
    required this.number,
    required this.name,
  });

  factory LocationStreet.fromMap(Map<String, dynamic> json) {
    return LocationStreet(
      number: json['number'],
      name: json['name'],
    );
  }
}

class LocationCoordinates {
  final String latitude;
  final String longitude;

  LocationCoordinates({
    required this.latitude,
    required this.longitude,
  });

  factory LocationCoordinates.fromMap(Map<String, dynamic> json) {
    return LocationCoordinates(
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }
}

class LocationTimeZone {
  final String offset;
  final String description;

  LocationTimeZone({
    required this.offset,
    required this.description,
  });

  factory LocationTimeZone.fromMap(Map<String, dynamic> json) {
    return LocationTimeZone(
      offset: json['offset'],
      description: json['description'],
    );
  }
}
