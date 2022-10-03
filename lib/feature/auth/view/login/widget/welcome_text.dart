import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../../core/helper/text_helper.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      StringConstant.welcomeText,
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
