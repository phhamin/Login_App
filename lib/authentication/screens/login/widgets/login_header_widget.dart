import 'package:flutter/material.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/constants/image_strings.dart';
import 'package:nhom1_laptrinhthietbididong_62cntt2_pizzaorder/constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            image: const AssetImage(hWelcomeScreenImage),
            height: size.height * 0.2),
        Text(hLoginTitle, style: Theme.of(context).textTheme.headlineLarge),
        Text(hLoginSubTitle, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}