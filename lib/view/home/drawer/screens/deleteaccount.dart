import 'package:flutter/material.dart';
import 'package:marketfeed_clone/utils/colorconstant.dart';

import 'package:marketfeed_clone/utils/fontstyles.dart';
import 'package:marketfeed_clone/view/home/drawer/screens/widget/deleteaccountcontainer.dart';

class DeletePage extends StatelessWidget {
  const DeletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          ListTile(
            trailing: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.grey),
                  borderRadius: BorderRadius.circular(30)),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop(context);
                  },
                  icon: Icon(
                    Icons.close_outlined,
                    color: Colors.black,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Delete Account',
              style: FontStyleConstant.deleteaccountheading,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Please let us know the reason why you are leaving',
              style: FontStyleConstant.deleteaccountsubheading,
            ),
          ),
          DeleteAccountContainer(
              deleteoption: 'I dont want to use marketfeed anymore'),
          DeleteAccountContainer(deleteoption: 'Iam using another account'),
          DeleteAccountContainer(
              deleteoption: 'Getting too many notifications'),
          DeleteAccountContainer(
              deleteoption: 'The app is not working properly'),
          DeleteAccountContainer(deleteoption: 'Other'),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Center(
                child: SizedBox(
                    height: 50,
                    width: 350,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                ColorConst.loginbutton)),
                        onPressed: () {},
                        child: Text('Continue')))),
          )
        ],
      ),
    );
  }
}
