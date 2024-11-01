import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// TODO - Call MyHomePage in Main page
// Use by SetState to update the counter value.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() async {
    setState(() {
      _counter++;
    });

    // Step-1
    // Save the counter value to shared preferences.
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('counter', _counter);
  }

  // Step-2
  loadValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // Retrieve the counter value from shared preferences.
    setState(() {
      _counter = prefs.getInt('counter') ?? 0;
    });
  }

  @override
  // Step-3
  void initState() {
    // TODO: implement initState
    super.initState();
    loadValues();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
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
