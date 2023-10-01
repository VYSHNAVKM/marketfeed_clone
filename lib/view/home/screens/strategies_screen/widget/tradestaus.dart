import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TradeStatus extends StatelessWidget {
  const TradeStatus({super.key});

  static const TextStyle optionStyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: SizedBox(
                    width: 250,
                    child: Text(
                      "1 Active Screen",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: const Color.fromARGB(255, 57, 77, 112)),
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              contentPadding: EdgeInsets.only(top: 10),
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
                    child: Text("options"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text("Weekly"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text("Medium Risk"),
                  ),
                ],
              ),
              trailing: Padding(
                padding: const EdgeInsets.all(8),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/png/Avatar.png'),
                  radius: 15,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
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
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "Win ratio",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "30 day return",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("60 K", style: optionStyle),
                            Text("63.13 %", style: optionStyle),
                            Text("2.3 %", style: optionStyle),
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
            )
          ],
        ),
      ),
    );
  }
}
