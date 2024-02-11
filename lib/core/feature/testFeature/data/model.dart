class PersonModel {
  String name;
  String age;

  PersonModel({required this.name, required this.age});

  factory PersonModel.toModel(Map<String, dynamic> json) {
    return PersonModel(
      name: json['name'],
      age: json['age'],
    );
  }
}
