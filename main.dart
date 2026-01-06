import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // #1 Root Material app: defines app-wide theme, routing, and entry screen
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( // #2 Provides the basic visual layout structure
      appBar: AppBar( // #3 Top application bar that displays the title and actions
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter'), // #4 Displays static text on the AppBar
      ),
      body: Center( // #7 Centers its child widget in the middle of the screen
        child: Column( // #6 Arranges its children vertically
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row( // #5 Arranges its children horizontally
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Counter:'),
              ],
            ),
            Container( // #8 A box widget used for layout, spacing, and styling
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
