import 'package:flutter/cupertino.dart';

class Pokemon {
  int id;
  String name;
  String description;
  double height;
  double weight;
  String type;
  AssetImage image;

  Pokemon(
      {this.id,
      this.name,
      this.type,
      this.description,
      this.height,
      this.weight,
      this.image});
}
