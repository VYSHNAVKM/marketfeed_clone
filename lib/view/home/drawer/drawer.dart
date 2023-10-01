import 'package:flutter/material.dart';
import 'package:marketfeed_clone/utils/fontstyles.dart';
import 'package:marketfeed_clone/view/home/drawer/my_drawer_header.dart';
import 'package:marketfeed_clone/view/home/drawer/pages/deleteaccount.dart';
import 'package:marketfeed_clone/view/home/drawer/pages/logout.dart';
import 'package:marketfeed_clone/view/home/drawer/pages/mybookmarks.dart';
import 'package:marketfeed_clone/view/home/drawer/pages/opendemataccount.dart';
import 'package:marketfeed_clone/view/login_screen/register_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({
    super.key,
  });

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  Future logout(BuildContext context) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.remove('number');
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('LOGOUT!'),
          content: const Text('Do you want to logout ?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterScreen(),
                    ),
                    (route) => false);
              },
              child: const Text('YES'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('NO'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          MyHeaderDrawer(),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.bookmark,
                  color: Colors.black,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('My Bookmarks', style: FontStyleConstant.drawerfont),
              ],
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MyBookmarks(),
              ));
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.open_in_browser_sharp,
                  color: Colors.black,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Open Demat Account', style: FontStyleConstant.drawerfont),
              ],
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => OpenDematAccount(),
              ));
            },
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.home_work_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('About marketfeed', style: FontStyleConstant.drawerfont),
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.privacy_tip_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Privacy Policy', style: FontStyleConstant.drawerfont),
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: Colors.black,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Terms of Use', style: FontStyleConstant.drawerfont),
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.mail_outline_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Support', style: FontStyleConstant.drawerfont),
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.share_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Share with friends!',
                    style: FontStyleConstant.drawerfont),
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.person_remove_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Delete Account', style: FontStyleConstant.drawerfont),
              ],
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DeletePage(),
              ));
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.logout,
                  color: Colors.black,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('LogOut',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 17,
                        fontWeight: FontWeight.w400)),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
              logout(context);
            },
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Made with 🖤 by marketfeed',
                  style: FontStyleConstant.drawerfont,
                ),
                Text(
                  'Version 0.0.0',
                  style: FontStyleConstant.drawerfont,
                ),
              ],
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
