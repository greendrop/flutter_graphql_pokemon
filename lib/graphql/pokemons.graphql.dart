import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'pokemons.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Query$Pokemons {
  Variables$Query$Pokemons({required this.first});

  @override
  factory Variables$Query$Pokemons.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$PokemonsFromJson(json);

  final int first;

  Map<String, dynamic> toJson() => _$Variables$Query$PokemonsToJson(this);
  int get hashCode {
    final l$first = first;
    return Object.hashAll([l$first]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$Pokemons) ||
        runtimeType != other.runtimeType) return false;
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) return false;
    return true;
  }

  Variables$Query$Pokemons copyWith({int? first}) =>
      Variables$Query$Pokemons(first: first == null ? this.first : first);
}

@JsonSerializable(explicitToJson: true)
class Query$Pokemons {
  Query$Pokemons({this.pokemons, required this.$__typename});

  @override
  factory Query$Pokemons.fromJson(Map<String, dynamic> json) =>
      _$Query$PokemonsFromJson(json);

  final List<Query$Pokemons$pokemons?>? pokemons;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$PokemonsToJson(this);
  int get hashCode {
    final l$pokemons = pokemons;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pokemons == null ? null : Object.hashAll(l$pokemons.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Pokemons) || runtimeType != other.runtimeType)
      return false;
    final l$pokemons = pokemons;
    final lOther$pokemons = other.pokemons;
    if (l$pokemons != null && lOther$pokemons != null) {
      if (l$pokemons.length != lOther$pokemons.length) return false;
      for (int i = 0; i < l$pokemons.length; i++) {
        final l$pokemons$entry = l$pokemons[i];
        final lOther$pokemons$entry = lOther$pokemons[i];
        if (l$pokemons$entry != lOther$pokemons$entry) return false;
      }
    } else if (l$pokemons != lOther$pokemons) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$Pokemons on Query$Pokemons {
  Query$Pokemons copyWith(
          {List<Query$Pokemons$pokemons?>? Function()? pokemons,
          String? $__typename}) =>
      Query$Pokemons(
          pokemons: pokemons == null ? this.pokemons : pokemons(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const documentNodeQueryPokemons = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Pokemons'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'first')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'pokemons'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'first'),
                  value: VariableNode(name: NameNode(value: 'first')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'number'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'image'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
Query$Pokemons _parserFn$Query$Pokemons(Map<String, dynamic> data) =>
    Query$Pokemons.fromJson(data);

class Options$Query$Pokemons extends graphql.QueryOptions<Query$Pokemons> {
  Options$Query$Pokemons(
      {String? operationName,
      required Variables$Query$Pokemons variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: documentNodeQueryPokemons,
            parserFn: _parserFn$Query$Pokemons);
}

class WatchOptions$Query$Pokemons
    extends graphql.WatchQueryOptions<Query$Pokemons> {
  WatchOptions$Query$Pokemons(
      {String? operationName,
      required Variables$Query$Pokemons variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeQueryPokemons,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$Pokemons);
}

class FetchMoreOptions$Query$Pokemons extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Pokemons(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$Pokemons variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: documentNodeQueryPokemons);
}

extension ClientExtension$Query$Pokemons on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Pokemons>> query$Pokemons(
          Options$Query$Pokemons options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Pokemons> watchQuery$Pokemons(
          WatchOptions$Query$Pokemons options) =>
      this.watchQuery(options);
  void writeQuery$Pokemons(
          {required Query$Pokemons data,
          required Variables$Query$Pokemons variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: documentNodeQueryPokemons),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$Pokemons? readQuery$Pokemons(
      {required Variables$Query$Pokemons variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryPokemons),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$Pokemons.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Pokemons> useQuery$Pokemons(
        Options$Query$Pokemons options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Pokemons> useWatchQuery$Pokemons(
        WatchOptions$Query$Pokemons options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Pokemons$Widget extends graphql_flutter.Query<Query$Pokemons> {
  Query$Pokemons$Widget(
      {widgets.Key? key,
      required Options$Query$Pokemons options,
      required graphql_flutter.QueryBuilder<Query$Pokemons> builder})
      : super(key: key, options: options, builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$Pokemons$pokemons {
  Query$Pokemons$pokemons(
      {required this.id,
      this.number,
      this.name,
      this.image,
      required this.$__typename});

  @override
  factory Query$Pokemons$pokemons.fromJson(Map<String, dynamic> json) =>
      _$Query$Pokemons$pokemonsFromJson(json);

  final String id;

  final String? number;

  final String? name;

  final String? image;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$Pokemons$pokemonsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$number = number;
    final l$name = name;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$number, l$name, l$image, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Pokemons$pokemons) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$Pokemons$pokemons on Query$Pokemons$pokemons {
  Query$Pokemons$pokemons copyWith(
          {String? id,
          String? Function()? number,
          String? Function()? name,
          String? Function()? image,
          String? $__typename}) =>
      Query$Pokemons$pokemons(
          id: id == null ? this.id : id,
          number: number == null ? this.number : number(),
          name: name == null ? this.name : name(),
          image: image == null ? this.image : image(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
