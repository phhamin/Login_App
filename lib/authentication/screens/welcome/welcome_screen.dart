import 'package:flutter/material.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/authentication/screens/login/login_screen.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/authentication/screens/signup/signup_screen.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/constants/colors.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/constants/image_strings.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/constants/sizes.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/constants/text_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;


    return Scaffold(
      backgroundColor: isDarkMode ? hSecondaryColor : hPrimaryColor,
      body: Container(
        padding: const EdgeInsets.all(hDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: const AssetImage(hWelcomeScreenImage), height: height * 0.6),
            Column(
              children: [
                Text(hWelcomeTitle, style: Theme.of(context).textTheme.headlineSmall),
                Text(hWelcomeSubTitle,
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        )
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(),
                      foregroundColor: hSecondaryColor,
                      side: BorderSide(color: hSecondaryColor),
                      padding: EdgeInsets.symmetric(vertical: hButtonHeight),
                    ),
                    child: Text(hLogin.toUpperCase()),
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: ElevatedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(),
                      foregroundColor: hWhiteColor,
                      backgroundColor: hSecondaryColor,
                      side: BorderSide(color: hSecondaryColor),
                      padding: EdgeInsets.symmetric(vertical: hButtonHeight),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          )
                      );
                    },
                    child: Text(hSignup.toUpperCase(),),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}