import 'package:flutter/material.dart';

class NiftySensexContainer extends StatefulWidget {
  const NiftySensexContainer({super.key});

  @override
  State<NiftySensexContainer> createState() => _NiftySensexContainerState();
}

class _NiftySensexContainerState extends State<NiftySensexContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'NIFTY 50',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          '20,211.57',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Container(
              color: Colors.red,
              height: 20,
              width: 55,
              child: Center(
                  child: Text(
                '-0.57 %',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '-120.5',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
