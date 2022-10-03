import 'package:flutter/material.dart';
import 'package:lol_app/feature/auth/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';

import 'custom_login_text_form.dart';
import 'custom_sign_buttons.dart';

Future<dynamic> bottomSheet(
    BuildContext context,
    String textTitle,
    String mailTitle,
    Icon mailIcon,
    String pasTitle,
    Icon passIcon,
    String againPassTitle,
    Icon againPassIcon,
    String buttonTitle) {
  return showModalBottomSheet(
      backgroundColor: Color.fromARGB(222, 50, 186, 240),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      context: context,
      builder: ((context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                textTitle,
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomLoginTextForm(
                hintText: mailTitle,
                icon: mailIcon,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomLoginTextForm(
                hintText: pasTitle,
                icon: passIcon,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomLoginTextForm(
                hintText: againPassTitle,
                icon: againPassIcon,
              ),
              const SizedBox(
                height: 50,
              ),
              CustomSignButton(
                onPressed: () {},
                title: buttonTitle,
              )
            ],
          ),
        );
      }));
}
