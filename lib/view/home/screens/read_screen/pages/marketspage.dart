import 'package:flutter/material.dart';
import 'package:marketfeed_clone/view/home/screens/read_screen/widget/readstatus.dart';

class MarketsPage extends StatelessWidget {
  const MarketsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ReadStatus();
      },
    );
  }
}
