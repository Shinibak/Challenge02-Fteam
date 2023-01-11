import 'package:flutter/animation.dart';

class PetsAdoptModel {
  final String name;
  final String location;
  final String race;
  final String age;
  final String sex;
  final List<String> photos;
  final String description;
  final Color cor;

  PetsAdoptModel({
    required this.name,
    required this.location,
    required this.race,
    required this.age,
    required this.sex,
    required this.photos,
    required this.description,
    required this.cor,
  });
}
