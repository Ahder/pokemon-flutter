import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_app/data/model/Pokemon.dart';
import 'package:pokemon_app/ui/pages/pokemonDetails.dart';

class PokemonList extends StatefulWidget {

  static const String routeName = "/pokemons";

  @override
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {

  List<Pokemon> _pokemonList = [
    new Pokemon(
        id: 1,
        name: "Pikatchu",
        type: "Electrik",
        description: "azerty",
        height: 12.3,
        weight: 34.9,
        image: new AssetImage('assets/images/electrik.png')),
    new Pokemon(
        id: 2,
        name: "Charmander",
        type: "Fire",
        description: "uiop",
        height: 54.98,
        weight: 45.6,
        image: new AssetImage('assets/images/fire.png')),
    new Pokemon(
        id: 3,
        name: "Bulbasaur",
        type: "Plant",
        description: "qsdfg",
        height: 47,
        weight: 19.5,
        image: new AssetImage('assets/images/plant.png')),
    new Pokemon(
        id: 1,
        name: "Squirtle",
        type: "Water",
        description: "hjklm",
        height: 53.7,
        weight: 22.6,
        image: new AssetImage('assets/images/water.png'))
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Pokemons")
        ),
        body:
        ListView.separated(
            itemBuilder: (context, position) {
              return ListTile(
                title: Text(
                  "#$position"+" "+_pokemonList.elementAt(position).name,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                leading: CircleAvatar(
                  backgroundImage: _pokemonList.elementAt(position).image
                ),
                onTap: () {
                  Navigator.pushNamed(context, pokemonDetails.routeName,
                      arguments: {"pokemon": _pokemonList.elementAt(position)});
                }
              );
            },
            separatorBuilder: (context, position) {
              //return Divider();
              return Container(
                margin: EdgeInsets.only(left: 3),
                height: 8,
              );
            },
            itemCount: _pokemonList.length));
  }
}
