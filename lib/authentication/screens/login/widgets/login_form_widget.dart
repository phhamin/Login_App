import 'package:flutter/material.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/authentication/screens/forget_password/forget_password_options/forget_password_bottom_sheet.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/constants/sizes.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: hFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: hEmail,
                  hintText: hEmail,
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: hFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: hPassword,
                hintText: hPassword,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
            const SizedBox(height: hFormHeight - 20),
            //FORGET PASSWORD BUTTTON hihi
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildShowModalBottomSheet(context);
                },
                child: const Text(hForgetPassword)),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(hLogin.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}