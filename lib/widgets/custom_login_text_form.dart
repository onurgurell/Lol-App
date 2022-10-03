import 'package:flutter/material.dart';

class CustomLoginTextForm extends StatelessWidget {
  final String hintText;
  bool obscure;
  final Icon icon;
  final TextEditingController textContoller;
  CustomLoginTextForm({
    Key key,
    this.hintText,
    this.icon,
    this.textContoller,
    this.obscure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        obscureText: obscure,
        controller: textContoller,
        decoration: InputDecoration(
          prefixIcon: icon,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.orange, width: 2.0),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
