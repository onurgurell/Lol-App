import 'package:flutter/material.dart';
import 'package:lol_app/feature/auth/view/login/widget/sign_in_widget.dart';
import 'package:lol_app/feature/auth/view/login/widget/welcome_page_image.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: ListView(
          children: [
            Column(
              children: const [
                WelcomePageImage(),
                SignInPageWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
