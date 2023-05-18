import 'package:flutter/material.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/constants/sizes.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: hFormHeight - 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  label: Text(hFullName),
                  prefixIcon: Icon(Icons.person_outline_rounded)),
            ),
            const SizedBox(height: hFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text(hEmail), prefixIcon: Icon(Icons.email_outlined)),
            ),
            const SizedBox(height: hFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text(hPhoneNo), prefixIcon: Icon(Icons.numbers)),
            ),
            const SizedBox(height: hFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text(hPassword), prefixIcon: Icon(Icons.fingerprint)),
            ),
            const SizedBox(height: hFormHeight - 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(hSignup.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}