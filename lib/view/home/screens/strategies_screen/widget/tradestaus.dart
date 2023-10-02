import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TradeStatus extends StatefulWidget {
  const TradeStatus({super.key, this.images});
  final images;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

  @override
  State<TradeStatus> createState() => _TradeStatusState();
}

class _TradeStatusState extends State<TradeStatus> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue.shade50,
                    radius: 10,
                    child: CircleAvatar(
                      radius: 4,
                      backgroundColor: Colors.blue.shade900,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "1 Active Trade",
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Smart Money",
                    style: GoogleFonts.lato(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/png/Avatar.png'),
                      radius: 25,
                    ),
                  ),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "options",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Weekly",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Medium Risk",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade100),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Min Capital",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Win ratio",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "30 day return",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("60 K", style: TradeStatus.optionStyle),
                            Text("63.13 %", style: TradeStatus.optionStyle),
                            Text("2.3 %", style: TradeStatus.optionStyle),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
