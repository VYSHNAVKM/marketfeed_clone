import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketfeed_clone/utils/colorconstant.dart';
import 'package:marketfeed_clone/utils/imageconstant.dart';
import 'package:marketfeed_clone/view/home/screens/strategies_screen/widget/tradestaus.dart';

class StrategiesScreen extends StatefulWidget {
  StrategiesScreen({
    super.key,
  });

  @override
  State<StrategiesScreen> createState() => _StrategiesScreenState();
}

class _StrategiesScreenState extends State<StrategiesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.person,
              color: ColorConst.appbariconcolor,
            ),
          ),
          centerTitle: true,
          title: ImageConstant.appbarlogo,
          backgroundColor: Colors.white),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/png/adimage.png'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20),
              ),
              height: 170,
              width: 350,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'How much have you made this week?',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      subtitle: Text(
                        'Compare your performance with other traders!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing:
                          IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              'Lose',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            )),
                        OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              'No Trade',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.bold),
                            )),
                        OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              'Profit',
                              style: TextStyle(
                                  color: Colors.green.shade600,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 50,
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Follow Top Strategies  🚀 ",
                    style: GoogleFonts.lato(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    radius: 15,
                    child: Icon(Icons.question_mark),
                  )
                ],
              ),
            ),
          ),
          ListView.builder(
            itemCount: 5,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context, index) {
              return TradeStatus();
            },
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
