import 'package:flutter/material.dart';

class ReadStatus extends StatefulWidget {
  const ReadStatus({super.key});

  @override
  State<ReadStatus> createState() => _ReadStatusState();
}

class _ReadStatusState extends State<ReadStatus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/jpg/meeting2.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)),
              height: 150,
              width: 350,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/png/Avatar.png'),
                  radius: 15,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'By Ben Benny',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                SizedBox(
                  width: 300,
                  child: Text(
                    'RIL Parters With NVIDIA to Develop AI Infra - Top Imdian Market Updates',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 5),
            child: Row(
              children: [
                Text(
                  'Today . ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '5 mins read',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 110),
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_border)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
