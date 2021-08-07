import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:site/providers/counter_provider.dart';
import 'package:site/routes/routes.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterProvider>(
          create: (_) => CounterProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Site',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: Routes.routes,
      initialRoute: Routes.home,
    );
  }
}
