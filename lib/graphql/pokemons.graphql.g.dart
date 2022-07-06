// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemons.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$Query$Pokemons _$Variables$Query$PokemonsFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$Pokemons(
      first: json['first'] as int,
    );

Map<String, dynamic> _$Variables$Query$PokemonsToJson(
        Variables$Query$Pokemons instance) =>
    <String, dynamic>{
      'first': instance.first,
    };

Query$Pokemons _$Query$PokemonsFromJson(Map<String, dynamic> json) =>
    Query$Pokemons(
      pokemons: (json['pokemons'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Pokemons$pokemons.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$PokemonsToJson(Query$Pokemons instance) =>
    <String, dynamic>{
      'pokemons': instance.pokemons?.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$Pokemons$pokemons _$Query$Pokemons$pokemonsFromJson(
        Map<String, dynamic> json) =>
    Query$Pokemons$pokemons(
      id: json['id'] as String,
      number: json['number'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$Pokemons$pokemonsToJson(
        Query$Pokemons$pokemons instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'name': instance.name,
      'image': instance.image,
      '__typename': instance.$__typename,
    };
