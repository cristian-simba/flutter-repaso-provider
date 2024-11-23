import 'package:flutter/material.dart';
import 'package:mi_provider/providers/CountProvider.dart';
import 'package:mi_provider/providers/TextProvider.dart';
import 'package:provider/provider.dart';
import 'screens/Home.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Countprovider()),
        ChangeNotifierProvider(create: (context) => Textprovider()),
      ],
      child: const MyApp()
    )

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(title: 'Flutter Demo Home Page'),
    );
  }
}

