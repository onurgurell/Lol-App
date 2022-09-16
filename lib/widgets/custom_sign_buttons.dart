import 'package:flutter/material.dart';

class CustomSignButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const CustomSignButton(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
      ),
      onPressed: onPressed,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .6,
        child: Center(
          child: Text('$title'),
        ),
      ),
    );
  }
}
