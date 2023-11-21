import 'package:flutter/material.dart';
import 'package:marketfeed_clone/globalwidget/topcontainer.dart';
import 'package:marketfeed_clone/utils/colorconstant.dart';
import 'package:marketfeed_clone/utils/imageconstant.dart';
import 'package:marketfeed_clone/view/home/screens/read_screen/pages/editorialpage.dart';
import 'package:marketfeed_clone/view/home/screens/read_screen/pages/jargonspage.dart';
import 'package:marketfeed_clone/view/home/screens/read_screen/pages/marketspage.dart';

class ReadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: ColorConst.appbariconcolor,
                  ))
            ],
            centerTitle: true,
            title: ImageConstant.appbarlogo,
            backgroundColor: Colors.white),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              flexibleSpace: TopContainer(),
              toolbarHeight: 220,
              backgroundColor: Colors.white,
              elevation: 0,
              floating: false,
              snap: false,
              pinned: false,
            ),
            SliverAppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              floating: true,
              snap: true,
              pinned: true,
              bottom: TabBar(
                isScrollable: true,
                labelColor: ColorConst.labelColor,
                labelStyle:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                unselectedLabelColor: Colors.black,
                indicatorColor: Colors.blue.shade900,
                indicatorWeight: 5,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: const [
                  Tab(text: 'Market'),
                  Tab(text: 'Editorial'),
                  Tab(text: 'Jargons'),
                ],
              ),
            )
          ],
          body: SizedBox(
            child: TabBarView(
              children: [
                MarketsPage(),
                EditorialPage(),
                JargonsPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
