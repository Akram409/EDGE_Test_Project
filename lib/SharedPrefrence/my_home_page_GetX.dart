import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

// TODO - Call MyHomePageGetx in Main page

class MyHomePageGetx extends StatefulWidget {
  const MyHomePageGetx({super.key, required this.title});

  final String title;

  @override
  State<MyHomePageGetx> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePageGetx> {
  // GetX variable fro observing the counter value.
  var _counter = 0.obs;

  void _incrementCounter() async {
    // Removed the setState() method
    _counter++;

    // Step-1
    // Save the counter value to shared preferences.
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // Counter value are in RX format
    prefs.setInt('counter', _counter.value);
  }

  // Step-2
  loadValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // Retrieve the counter value from shared preferences.
    _counter.value = prefs.getInt('counter') ?? 0;
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
            // Retrieve the counter value using GetX.
            Obx(() => Text(
              _counter.value.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                )),
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
