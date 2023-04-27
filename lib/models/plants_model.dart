class Plants {
  final String name;
  final String sname;
  final String property;
  final String location;
  // final String photo;

  Plants({
    required this.name,
    required this.sname,
    required this.property,
    required this.location,
    // required this.photo
  });

  factory Plants.fromJson(Map<String, dynamic> json) {
    return Plants(
      name: json['name'],
      sname: json['sname'],
      property: json['property'],
      location: json['location'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'sname': sname,
        'property': property,
        'location': location,
      };
}
