import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:marketfeed_clone/utils/colorconstant.dart';
import 'package:marketfeed_clone/utils/imageconstant.dart';
import 'package:marketfeed_clone/view/login_screen/otp_screen.dart';
import 'package:marketfeed_clone/view/login_screen/widgets/custom_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController phoneController = TextEditingController();

  String phonenumber = '7902987407';

  Future checklogin() async {
    if (phoneController.text == phonenumber) {
      SharedPreferences pref = await SharedPreferences.getInstance();
      pref.setString('number', phoneController.text);

      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => OtpScreen(),
      ));
    }
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => OtpScreen(),
    ));
  }

  Country selectedCountry = Country(
    phoneCode: "91",
    countryCode: "IN",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "India",
    example: "India",
    displayName: "India",
    displayNameNoCountryCode: "IN",
    e164Key: "",
  );
  String pass = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
                child: Column(
                  children: [
                    SizedBox(height: 200),
                    Text(
                      "Enter your phone number",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(height: 20),
                    TextFormField(
                      cursorColor: ColorConst.loginbutton,
                      controller: phoneController,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      onChanged: (value) {
                        setState(() {
                          phoneController.text = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: "Enter phone number",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.grey.shade600,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black12),
                        ),
                        prefixIcon: Container(
                          padding: const EdgeInsets.all(20),
                          child: InkWell(
                            onTap: () {
                              showCountryPicker(
                                  context: context,
                                  countryListTheme: const CountryListThemeData(
                                    bottomSheetHeight: 550,
                                  ),
                                  onSelect: (value) {
                                    setState(() {
                                      selectedCountry = value;
                                    });
                                  });
                            },
                            child: Text(
                              "${selectedCountry.flagEmoji} + ${selectedCountry.phoneCode}",
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        suffixIcon: phoneController.text.length > 9
                            ? Container(
                                height: 30,
                                width: 30,
                                margin: const EdgeInsets.all(10.0),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                                child: const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              )
                            : null,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 35,
                          height: 20,
                          child: ImageConstant.whatsapp,
                        ),
                        Text(
                          'send otp on whatsapp',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: CustomButton(
                          text: "Login",
                          onPressed: () {
                            checklogin();
                          }),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'We keep your information completlely private',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
