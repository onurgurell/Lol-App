import 'package:flutter/material.dart';
import 'package:lol_app/feature/auth/view/login/widget/sign_login_button.dart';
import 'package:lol_app/feature/auth/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';

import 'any_account_text.dart';
import 'sign_email_text_form.dart';
import 'sign_password_text_form.dart';
import 'welcome_text.dart';

class SignInPageWidget extends StatelessWidget {
  const SignInPageWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthViewModel>(builder: (context, viewModel, child) {
      return Container(
        height: MediaQuery.of(context).size.height * .7,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(32),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: const [
              WelcomeText(),
              AnyAccountText(),
              SizedBox(
                height: 22,
              ),
              SignEmailTextForm(),
              SignPasswordTextForm(),
              SignLoginButton(),
            ],
          ),
        ),
      );
    });
  }
}
