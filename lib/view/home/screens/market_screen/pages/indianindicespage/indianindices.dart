import 'package:flutter/material.dart';
import 'package:marketfeed_clone/model/listdetails.dart';
import 'package:marketfeed_clone/view/home/screens/market_screen/pages/indianindicespage/widget/niftysensex.dart';
import 'package:marketfeed_clone/view/home/screens/market_screen/pages/indianindicespage/widget/sectoralindicescontainer.dart';

class IndianIndicesPage extends StatelessWidget {
  const IndianIndicesPage({super.key});

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
                Container(
                  height: 120,
                  color: Colors.grey.shade200,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NiftySensexContainer(),
                        NiftySensexContainer()
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                  thickness: 5,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Sectoral Indices',
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
                    return SectoraIindicesContainer(
                      cashlists: cashlist[index],
                      negativevalues: negativevalue[index],
                      negativepercents: negativepercent[index],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
