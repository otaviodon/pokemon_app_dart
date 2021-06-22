class PokemonModel {
  int id;
  String name;
  String imageUrl;
  int weight;
  int height;
  String type1;
  String? type2;
  int health;
  int attack;
  int defense;
  int speed;
  int baseexp;

  PokemonModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.weight,
    required this.height,
    required this.type1,
    required this.type2,
    required this.health,
    required this.attack,
    required this.defense,
    required this.speed,
    required this.baseexp,
  });

  factory PokemonModel.fromMap(Map<String, dynamic> map) {
    final id = map['id'];
    final typeList = map['types'] as List;
    final statList = map['stats'] as List;
    return PokemonModel(
      id: id,
      name: map['name'],
      weight: map['weight'],
      height: map['height'],
      baseexp: map['base_experience'],
      imageUrl:
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png',
      type1: typeList[0]['type']['name'],
      type2: typeList.length == 2 ? typeList[1]['type']['name'] : null,
      health: statList[0]['base_stat'],
      attack: statList[1]['base_stat'],
      defense: statList[2]['base_stat'],
      speed: statList[5]['base_stat'],
    );
  }
}
