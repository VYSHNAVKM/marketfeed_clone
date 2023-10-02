import 'package:flutter/material.dart';
import 'package:marketfeed_clone/utils/colorconstant.dart';
import 'package:marketfeed_clone/utils/fontstyles.dart';

class MyBookmarks extends StatelessWidget {
  const MyBookmarks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        title: Text(
          'My Bookmarks',
          style: FontStyleConstant.appbarfont,
        ),
      ),
      backgroundColor: ColorConst.bgclr,
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
            child: Icon(
              Icons.bookmark_outlined,
              color: Colors.black,
              size: 100,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'You have not bookmarked anything yet!',
              style: FontStyleConstant.drawerheadingfont,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: Text(
              'Start bookmarking your favourite articles and read it anytime or on_the_go',
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
