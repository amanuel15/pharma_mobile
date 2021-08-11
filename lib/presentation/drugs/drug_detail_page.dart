import 'package:flutter/material.dart';
import 'package:pharma_flutter/domain/pharma/drug.dart';

class DrugDetailPage extends StatelessWidget {
  final Drug drug;
  const DrugDetailPage({Key? key, required this.drug}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Text('aman'),
      )),
    );
  }
}
