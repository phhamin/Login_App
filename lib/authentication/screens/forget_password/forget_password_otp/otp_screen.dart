import 'package:flutter/material.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/constants/sizes.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/constants/text_strings.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(hDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              hOtpTitle,
              style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 80.0),
            ),
            Text(hOtpSubTitle.toUpperCase(), style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 40.0),
            const Text("$hOtpMessage haphan2k2@gmail.com", textAlign: TextAlign.center),
            const SizedBox(height: 20.0),
            OtpTextField(
                mainAxisAlignment: MainAxisAlignment.center,
                numberOfFields: 6,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
                onSubmit: (code) => print("OTP is => $code")),
            const SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: const Text(hNext)),
            ),
          ],
        ),
      ),
    );
  }
}