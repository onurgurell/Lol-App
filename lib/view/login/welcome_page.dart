import 'package:flutter/material.dart';

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
            CustomSignButton(
              title: 'Sign Up',
              onPressed: () {},
            ),
            CustomSignButton(
              title: 'Sign In',
              onPressed: () {},
            ),
          ]),
        ),
      ),
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
        'Welcome Application',
        style: TextStyle(
          fontSize: 22,
        ),
      ),
    );
  }
}
