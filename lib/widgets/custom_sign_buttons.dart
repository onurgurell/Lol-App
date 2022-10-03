import 'package:flutter/material.dart';

class CustomSignButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const CustomSignButton({Key key, this.title, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(34),
        ),
      ),
      onPressed: onPressed,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .07,
        width: MediaQuery.of(context).size.width * .6,
        child: Center(
          child: Text(
            '$title',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
