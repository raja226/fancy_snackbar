import 'package:fancy_snackbar/fancy_snackbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Package example"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              FancySnackbar.show(
                  context, "Hi, I'm happy to use the Fancy Snackbar!",
                  logo: const Icon(Icons.done_all, color: Colors.white),
                  seconds: 05);
            },
            child: const Text("Show SnackBar!!")),
      ),
    );
  }
}
