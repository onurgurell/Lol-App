import 'package:flutter/material.dart';

class WelcomePageImage extends StatelessWidget {
  const WelcomePageImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
      height: MediaQuery.of(context).size.height * .3,
      child: Image.asset('assets/images/lolText.png'),
    );
  }
}
