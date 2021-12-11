import 'package:flutter/material.dart';

class FixedCost extends StatefulWidget {
  const FixedCost({ Key? key }) : super(key: key);

  @override
  _FixedCostState createState() => _FixedCostState();
}

class _FixedCostState extends State<FixedCost> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('固定ページ'),),
    );
  }
}