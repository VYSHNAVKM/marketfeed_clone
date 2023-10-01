import 'package:flutter/material.dart';

class WatchlistPage extends StatelessWidget {
  const WatchlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.grey.shade200,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Icon(
                Icons.remove_red_eye_sharp,
                size: 100,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Your Watchlist Is Empty',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Search and add symbol to your watchlist',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                onPressed: () {},
                child: Text('Search & Add Symbol'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
