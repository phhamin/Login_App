import 'package:flutter/material.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/authentication/screens/signup/widgets/form_header_widget.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/authentication/screens/signup/widgets/signup_footer_widget.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/authentication/screens/signup/widgets/signup_form_widget.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/constants/image_strings.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/constants/sizes.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(hDefaultSize),
            child: Column(
              children: const [
                FormHeaderWidget(
                  image: hWelcomeScreenImage,
                  title: hSignUpTitle,
                  subTitle: hSignUpSubTitle,
                  imageHeight: 0.15,
                ),
                SignUpFormWidget(),
                SignUpFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}