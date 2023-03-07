// main.dart
import 'package:fir_storage/state_management/Provider/provider/movie_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/homescreenprovider.dart';

void main() {
  runApp(ChangeNotifierProvider<MovieProvider>(
    child: MyApp(),
    create: (_) => MovieProvider(), // Create a new ChangeNotifier object
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Provider Example',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HomeScreenprovider(),
    );
  }
}
