import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
        decoration: BoxDecoration(color: Colors.grey.shade300),
        currentAccountPicture: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Text(
                        'VK',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue.shade600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 30),
                      child: CircleAvatar(
                        radius: 11,
                        child: Icon(
                          Icons.camera_alt_outlined,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
        accountName: Text(
          'Vyshnav k m',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        accountEmail: Text(
          '7902987407',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ));
  }
}
