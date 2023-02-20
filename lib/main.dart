import 'package:flutter/material.dart';
import 'package:flutter_sanctum/Providers/Auth.dart';
import 'package:flutter_sanctum/widgets/nav-drawer.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<ChangeNotifier>(
    create: (_) => Auth(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Sanctum'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: const NavDrawer(),
      body: const Center(child: Text('You are logged in!')),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}