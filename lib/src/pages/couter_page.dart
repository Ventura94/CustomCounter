import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {
  const CountPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  final TextStyle _myStyleText = const TextStyle(fontSize: 25);
  late int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Número de clicks:", style: _myStyleText),
            Text("$_count", style: _myStyleText),
          ],
        ),
      ),
      floatingActionButton: _floatingActionButtons(),
    );
  }

  Widget _floatingActionButtons() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      FloatingActionButton(
        onPressed: () => setState(() => _count++),
        child: const Icon(Icons.exposure_plus_1),
      ),
      const SizedBox(width: 5.0),
      FloatingActionButton(
        onPressed: () => setState(() => _count = 0),
        child: const Icon(Icons.exposure_zero),
      ),
      const SizedBox(width: 5.0),
      FloatingActionButton(
        onPressed: () => setState(() => _count--),
        child: const Icon(Icons.exposure_minus_1),
      )
    ]);
  }
}
