import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'Animal.dart';

class Favorite {
  final List<Animal> list;
  final String user;

  Favorite(this.list, this.user);

  Map<String, dynamic> toJson() {
    return {
      'list': list.map((animal) => animalToJson(animal)).toList(),
      'user': user,
    };
  }

  factory Favorite.fromJson(Map<String, dynamic> json) {
    final List<dynamic> animalList = json['list'];
    final List<Animal> animals = animalList
        .map((json) => Animal(
              json['image'],
              json['name'],
              json['location'],
              json['rating'],
              json['age'],
              json['description'],
            ))
        .toList();
    final String user = json['user'];
    return Favorite(animals, user);
  }



  Map<String, dynamic> animalToJson(Animal animal) {
    return {
      'image': animal.image,
      'name': animal.name,
      'location': animal.location,
      'rating': animal.rating,
      'age': animal.age,
      'description': animal.description,
    };
  }

  Animal animalFromJson(Map<String, dynamic> json) {
    return Animal(
      json['image'],
      json['name'],
      json['location'],
      json['rating'],
      json['age'],
      json['description'],
    );
  }

  Future<void> saveFavoriteAnimal(Animal animal, String user) async {
    final prefs = await SharedPreferences.getInstance();
    final favoriteJson = prefs.getString('favorites');
    if (favoriteJson != null) {
      final Map<String, dynamic> favoriteMap = json.decode(favoriteJson);
      final Map<String, dynamic> updatedFavoriteMap = Map<String, dynamic>.from(favoriteMap);
      if (updatedFavoriteMap.containsKey(user)) {
        final List<dynamic> animalList = updatedFavoriteMap[user]['list'];
        final List<Animal> existingAnimals = animalList.map((json) => animalFromJson(json)).toList().cast<Animal>();

        if (existingAnimals.any((existingAnimal) => existingAnimal.name == animal.name)) {
          return;
        }
        animalList.add(animalToJson(animal));
      } else {
        updatedFavoriteMap[user] = {
          'list': [animalToJson(animal)],
        };
      }
      await prefs.setString('favorites', json.encode(updatedFavoriteMap));
    } else {
      final favorite = {
        user: {
          'list': [animalToJson(animal)],
        },
      };
      await prefs.setString('favorites', json.encode(favorite));
    }
  }

  Future<List<Animal>> loadFavoriteAnimals(String user) async {
    final prefs = await SharedPreferences.getInstance();
    final favoriteJson = prefs.getString('favorites');
    if (favoriteJson != null) {
      final Map<String, dynamic> favoriteMap = json.decode(favoriteJson);
      if (favoriteMap.containsKey(user)) {
        final List<dynamic> animalList = favoriteMap[user]['list'];
        final List<Animal> animals = animalList.map((json) => animalFromJson(json)).toList().cast<Animal>();
        return animals;
      }
    }
    return [];
  }

  Future<void> removeFavoriteAnimal(Animal animal, String user) async {
    final prefs = await SharedPreferences.getInstance();
    final favoriteJson = prefs.getString('favorites');
    if (favoriteJson != null) {
      final Map<String, dynamic> favoriteMap = json.decode(favoriteJson);
      if (favoriteMap.containsKey(user)) {
        final List<dynamic> animalList = favoriteMap[user]['list'];
        final List<Animal> animals = animalList.map((json) => animalFromJson(json)).toList().cast<Animal>();

        // Filtrar la lista para eliminar el animal correspondiente
        final updatedAnimals = animals.where((a) => a.name != animal.name).toList();

        // Actualizar el mapa de favoritos con la nueva lista
        favoriteMap[user]['list'] = updatedAnimals.map((a) => animalToJson(a)).toList();

        await prefs.setString('favorites', json.encode(favoriteMap));
      }
    }
  }

}


