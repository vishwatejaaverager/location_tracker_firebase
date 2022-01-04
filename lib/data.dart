class loc {
  final String? latitude;
  final String? longitude;

  loc(this.latitude, this.longitude);

  loc.fromJson(Map<dynamic, dynamic> json)
      : longitude = json['latitude'] as String,
        latitude = json['latitude'] as String;

  Map<dynamic, dynamic> toJson() => <dynamic, dynamic>{
        'longitude': longitude,
        'latitude': latitude,
      };
}
