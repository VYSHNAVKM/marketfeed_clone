import 'package:intro_slider/intro_slider.dart';
import 'package:flutter/material.dart';
import 'package:marketfeed_clone/view/login_screen/register_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<ContentConfig> listContentConfig = [];

  @override
  void initState() {
    super.initState();

    listContentConfig.add(
      const ContentConfig(
        heightImage: 500,
        pathImage: "assets/introimages/introimage1.jpg",
        backgroundColor: Colors.white,
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        heightImage: 500,
        pathImage: "assets/introimages/introimage2.jpg",
        backgroundColor: Colors.white,
      ),
    );
  }

  void onDonePress() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => RegisterScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      key: UniqueKey(),
      listContentConfig: listContentConfig,
      onDonePress: onDonePress,
    );
  }
}
