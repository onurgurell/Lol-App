import 'package:flutter/material.dart';
import 'package:lol_app/view/auth_page/sign_in_page.dart';

import '../../utils/constants/constants.dart';
import '../../widgets/custom_sign_buttons.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            _welcomeText(),
            const SizedBox(
              height: 22,
            ),
            _welcomePage(context),
            const SizedBox(
              height: 22,
            ),
            _signUpButton(),
            _signInButton(context),
          ]),
        ),
      ),
    );
  }

  CustomSignButton _signInButton(BuildContext context) {
    return CustomSignButton(
      title: 'Sign In',
      onPressed: () {
        Navigator.pushNamed(context, '/signIn');
      },
    );
  }

  CustomSignButton _signUpButton() {
    return CustomSignButton(
      title: 'Sign Up',
      onPressed: () {},
    );
  }

  Container _welcomePage(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(9),
      width: MediaQuery.of(context).size.width * 4,
      height: MediaQuery.of(context).size.height * .6,
      child: const Image(
        image: AssetImage('assets/images/lol.jpeg'),
      ),
    );
  }

  Container _welcomeText() {
    return Container(
      margin: const EdgeInsets.all(9),
      child: const Text(
        'WELCOME LEAGUE OF LEAGENDS WORLD',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
