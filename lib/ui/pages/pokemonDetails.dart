import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_app/data/model/Pokemon.dart';

class pokemonDetails extends StatelessWidget {

  static const String routeName = "/pokemons/detail";

  @override
  Widget build(BuildContext context) {

    Pokemon selectedPokemon;

    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    if (arguments != null) {
      selectedPokemon = arguments['pokemon'];
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedPokemon.name),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Image(image: selectedPokemon.image),
            Text(selectedPokemon.name),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(selectedPokemon.weight.toString()),
                Text(selectedPokemon.height.toString())
              ],
            ),
            Card(
              child: Text(selectedPokemon.description),
            )
          ],
        ),
      ),
    );
  }


}