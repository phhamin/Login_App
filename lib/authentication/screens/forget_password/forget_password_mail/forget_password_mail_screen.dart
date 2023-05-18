import 'package:flutter/material.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/authentication/screens/signup/widgets/form_header_widget.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/constants/image_strings.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/constants/sizes.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/constants/text_strings.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(hDefaultSize),
            child: Column(
              children: [
                const SizedBox(height: hDefaultSize * 4),
                FormHeaderWidget(
                  image: hForgetPasswordImage,
                  title: hForgetPassword.toUpperCase(),
                  subTitle: hForgetPasswordSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30.0,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: hFormHeight),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            label: Text(hEmail),
                            hintText: hEmail,
                            prefixIcon: Icon(Icons.mail_outline_rounded)),
                      ),
                      const SizedBox(height: 20.0),
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const OTPScreen(),));
                              },
                              child: const Text(hNext))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}