import 'package:flutter/material.dart';
import 'package:marketfeed_clone/view/login_screen/register_screen.dart';

class LogOut extends StatefulWidget {
  const LogOut({super.key});

  @override
  State<LogOut> createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
  
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('LOGOUT!'),
      content: const Text('Do you want to logout ?'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterScreen(),
              ),
              (route) => false),
          child: const Text('YES'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('NO'),
        ),
      ],
    );
  }
}
