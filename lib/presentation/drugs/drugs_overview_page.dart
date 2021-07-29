import 'package:flutter/material.dart';

class PharmaOverviewPage extends StatelessWidget {
  const PharmaOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pharma'),
      ),
      body: Container(
        child: Text('Home Page!'),
      ),
    );
  }
}
