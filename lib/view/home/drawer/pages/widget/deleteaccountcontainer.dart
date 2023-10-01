import 'package:flutter/material.dart';
import 'package:marketfeed_clone/utils/fontstyles.dart';

class DeleteAccountContainer extends StatelessWidget {
  const DeleteAccountContainer({super.key, required this.deleteoption});
  final String deleteoption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 20),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            deleteoption,
            style: FontStyleConstant.deleteaccountcontainerfont,
          ),
        ),
      ),
    );
  }
}
