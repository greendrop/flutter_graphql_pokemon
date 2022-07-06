// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_graphql_pokemon/ui/main/main_page.dart';

class AppRoot extends HookConsumerWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final link = HttpLink('https://graphql-pokemon2.vercel.app');

    final client = ValueNotifier<GraphQLClient>(
      GraphQLClient(
        link: link,
        cache: GraphQLCache(store: HiveStore()),
      ),
    );

    return GraphQLProvider(
      client: client,
      child: const MaterialApp(title: 'GraphQL Pokémon', home: MainPage()),
    );
  }
}
