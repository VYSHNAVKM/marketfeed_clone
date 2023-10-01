import 'package:flutter/material.dart';


class OpenDematAccount extends StatelessWidget {
  const OpenDematAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/png/demat bg image.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 340, top: 70),
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 332, top: 62),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop(context);
                  },
                  icon: Icon(
                    Icons.close_rounded,
                    color: Colors.black,
                    size: 30,
                  )),
            ),
            SizedBox(
              width: 250,
              child: Padding(
                padding: const EdgeInsets.only(top: 150, left: 30),
                child: Text(
                  'Open Demat Account Through marketfeed!',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200, top: 100),
              child: Image(image: AssetImage('assets/png/man.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 400, left: 50),
              child: SizedBox(
                  height: 300,
                  width: 300,
                  child: Image(image: AssetImage('assets/jpg/ad.jpg'))),
            )
          ],
        ),
      ),
    );
  }
}
