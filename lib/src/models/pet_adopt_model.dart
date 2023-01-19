import 'package:flutter/animation.dart';

class PetAdoptModel {
  final String name;
  final String location;
  final String race;
  final String age;
  final String sex;
  final List<String> photos;
  final String description;
  final Color cor;

  const PetAdoptModel({
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
