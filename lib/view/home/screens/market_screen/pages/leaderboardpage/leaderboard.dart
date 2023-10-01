import 'package:flutter/material.dart';
import 'package:marketfeed_clone/view/home/screens/market_screen/pages/leaderboardpage/widget/dropdownbutton.dart';
import 'package:marketfeed_clone/view/home/screens/market_screen/pages/leaderboardpage/widget/stockcontainer.dart';

class LeaderBoardPage extends StatefulWidget {
  const LeaderBoardPage({super.key});

  @override
  State<LeaderBoardPage> createState() => _LeaderBoardPageState();
}

class _LeaderBoardPageState extends State<LeaderBoardPage> {
  int topvalue = 1;
  int niftyvalue = 1;
  String value1 = "Top Gainers";
  String value2 = "Top Losers";
  String selectedvalue1 = "Top Gainers";
  String selectedvalue2 = "Nifty 50";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.grey.shade200,
      width: MediaQuery.of(context).size.width * 0.8,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  height: 65,
                  width: 170,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        selectedvalue1,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20)),
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              elevation: 5,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  height: 300,
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Choose an option',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              IconButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                icon: Icon(
                                                  Icons.close,
                                                  size: 30,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        ListTile(
                                            title: const Text('Top Gainers'),
                                            leading: Radio(
                                              value: 1,
                                              groupValue: topvalue,
                                              onChanged: (value) {
                                                setState(() {
                                                  topvalue = value!;
                                                  selectedvalue1 = value1;
                                                });
                                                Navigator.pop(context);
                                              },
                                            )),
                                        ListTile(
                                            title: const Text('Top Losers'),
                                            leading: Radio(
                                              value: 2,
                                              groupValue: topvalue,
                                              onChanged: (value) {
                                                setState(() {
                                                  topvalue = value!;
                                                  selectedvalue1 = value2;
                                                });
                                                Navigator.pop(context);
                                              },
                                            )),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  height: 65,
                  width: 170,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Nifty 50',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20)),
                        child: InkWell(
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: {
                0: FractionColumnWidth(0.5),
                1: FractionColumnWidth(0.25),
                2: FractionColumnWidth(0.25)
              },
              border: TableBorder.all(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.shade600,
                width: 0.2,
              ),
              children: [
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        'Stock Symbol',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        'LTP',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        'Change',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  CompanyName(campanynames: "BAJAJFINSV"),
                  CashList(cashs: "1,520.70"),
                  ChangeList(percents: "+2.54%"),
                ]),
                TableRow(children: [
                  CompanyName(campanynames: "ASIANPAINT"),
                  CashList(cashs: "3,969.10"),
                  ChangeList(percents: "+1.34%"),
                ]),
                TableRow(children: [
                  CompanyName(campanynames: "BAJFINANCE"),
                  CashList(cashs: "7,111.50"),
                  ChangeList(percents: "+1.24%"),
                ]),
                TableRow(children: [
                  CompanyName(campanynames: "ONGC"),
                  CashList(cashs: "154.76"),
                  ChangeList(percents: "+1.54%"),
                ]),
                TableRow(children: [
                  CompanyName(campanynames: "BHARTIARTL"),
                  CashList(cashs: "836.60"),
                  ChangeList(percents: "+0.95%"),
                ]),
                TableRow(children: [
                  CompanyName(campanynames: "BMW"),
                  CashList(cashs: "5,695.63"),
                  ChangeList(percents: "+1.98%"),
                ]),
                TableRow(children: [
                  CompanyName(campanynames: "BENZ"),
                  CashList(cashs: "9,256.37"),
                  ChangeList(percents: "+1.94%"),
                ]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
