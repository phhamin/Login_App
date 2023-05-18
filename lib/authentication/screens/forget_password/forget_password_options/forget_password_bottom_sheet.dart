import 'package:flutter/material.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/authentication/screens/forget_password/forget_password_mail/forget_password_mail_screen.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/constants/sizes.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/constants/text_strings.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: EdgeInsets.all(hDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(hForgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,),
            Text(hForgetMailSubTitle, style: Theme.of(context).textTheme.bodyMedium,),
            const SizedBox(height: 30,),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              title: hEmail,
              subTitle: hResetViaEMail,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordMailScreen(),));
              },
            ),
            const SizedBox(height: 20,),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: hPhoneNo,
              subTitle: hResetViaPhone,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => OTPScreen(),));
              },
            ),
          ],
        ),
      ),
    );
  }
}