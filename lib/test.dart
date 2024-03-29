import 'package:flutter/material.dart';

class SenseiTest extends StatefulWidget {
  const SenseiTest({Key? key}) : super(key: key);

  @override
  State<SenseiTest> createState() => _SenseiTestState();
}

class _SenseiTestState extends State<SenseiTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
      ),
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 3,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(100, (index) {
          return Center(
            child: Text(
              'Item $index',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          );
        }),
      ),
    );
  }
}
