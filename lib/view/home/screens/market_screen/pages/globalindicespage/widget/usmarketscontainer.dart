import 'package:flutter/material.dart';

class UsMarketsContainer extends StatelessWidget {
  const UsMarketsContainer({
    super.key,
    this.County,
    required this.cashlists,
    required this.positivevalues,
    required this.positivepercents,
  });
  final String? County;
  final String cashlists;

  final String positivevalues;

  final String positivepercents;

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'NIFTY BANK',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.red,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'USA',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                cashlists,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                color: Colors.green,
                height: 20,
                width: 55,
                child: Center(
                    child: Text(
                  positivepercents,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
              Text(
                positivevalues,
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
