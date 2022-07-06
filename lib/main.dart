// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:graphql_flutter/graphql_flutter.dart';

// Project imports:
import 'package:flutter_graphql_pokemon/app_root.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHiveForFlutter();

  runApp(const AppRoot());
}
