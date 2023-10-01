import 'package:flutter/material.dart';

class SectoraIindicesContainer extends StatelessWidget {
  SectoraIindicesContainer({
    super.key,
    required this.cashlists,
    required this.negativevalues,
    required this.negativepercents,
  });
  final String cashlists;
  final String negativevalues;
  final String negativepercents;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.white,
        height: 60,
        width: MediaQuery.of(context).size.width * 0.95,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'NIFTY BANK',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                cashlists,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                color: Colors.red,
                height: 20,
                width: 55,
                child: Center(
                    child: Text(
                  negativepercents,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
              Text(
                negativevalues,
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
