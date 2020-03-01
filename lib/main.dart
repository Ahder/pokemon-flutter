import 'package:flutter/material.dart';
import 'package:pokemon_app/ui/pages/pokemonDetails.dart';
import 'package:pokemon_app/ui/pages/pokemonList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: <String, WidgetBuilder>{
        PokemonList.routeName: (BuildContext context) => PokemonList(),
        pokemonDetails.routeName: (BuildContext context) => pokemonDetails()
      },
      home: PokemonList(),
    );
  }
}
