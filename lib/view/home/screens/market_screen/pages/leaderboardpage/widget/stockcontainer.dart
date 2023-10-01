import 'package:flutter/material.dart';

class CompanyName extends StatelessWidget {
  const CompanyName({super.key, required this.campanynames});
  final String campanynames;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      campanynames,
      style: TextStyle(fontWeight: FontWeight.bold),
    ));
  }
}

class CashList extends StatelessWidget {
  const CashList({super.key, required this.cashs});
  final String cashs;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      cashs,
      style: TextStyle(fontWeight: FontWeight.bold),
    ));
  }
}

class ChangeList extends StatelessWidget {
  const ChangeList({super.key, required this.percents});
  final String percents;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          color: Colors.green,
          height: 30,
          width: 80,
          child: Center(
              child: Text(
            percents,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
