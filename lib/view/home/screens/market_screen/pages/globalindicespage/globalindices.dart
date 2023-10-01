import 'package:flutter/material.dart';
import 'package:marketfeed_clone/model/listdetails.dart';
import 'package:marketfeed_clone/view/home/screens/market_screen/pages/globalindicespage/widget/usmarketscontainer.dart';

class GlobalIndicesPage extends StatelessWidget {
  const GlobalIndicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.grey.shade200,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text('Last update on sun 10 jun 10:50 am'),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'US Markets',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: cashlist.length,
                  itemBuilder: (context, index) {
                    return UsMarketsContainer(
                        cashlists: cashlist[index],
                        positivevalues: positivevalue[index],
                        positivepercents: positivepercent[index]);
                  },
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
