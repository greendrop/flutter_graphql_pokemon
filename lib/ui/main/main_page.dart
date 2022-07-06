// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_graphql_pokemon/graphql/pokemons.graphql.dart';

class MainPage extends HookConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appBar = AppBar(
      title: const Text('GraphQL Pokémon'),
    );
    final queryResult = useQuery$Pokemons(
      Options$Query$Pokemons(
        variables: Variables$Query$Pokemons(first: 200),
      ),
    );
    final result = queryResult.result;

    Widget bodyChild;
    if (result.isLoading) {
      bodyChild = const Center(child: CircularProgressIndicator());
    } else if (result.hasException) {
      bodyChild = Text(result.exception.toString());
    } else {
      final pokemons = result.parsedData?.pokemons ?? [];
      bodyChild = ListView.builder(
        itemCount: pokemons.length,
        itemBuilder: (context, index) {
          final pokemon = pokemons[index];
          return ListTile(
            leading: Image.network(pokemon?.image ?? ''),
            title: Text(pokemon?.name ?? ''),
          );
        },
      );
    }

    final body = RefreshIndicator(
      onRefresh: queryResult.refetch,
      child: bodyChild,
    );

    return Scaffold(
      appBar: appBar,
      body: body,
    );
  }
}
