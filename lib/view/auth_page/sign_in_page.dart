import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lol_app/widgets/custom_login_text_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _loginText(),
              const SizedBox(
                height: 22,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .7,
                height: MediaQuery.of(context).size.height * .4,
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _emailFormField(),
                    _passwordTextField(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  CustomLoginTextForm _passwordTextField() {
    return const CustomLoginTextForm(
      hintText: 'Şifre giriniz',
      icon: Icon(Icons.lock),
    );
  }

  CustomLoginTextForm _emailFormField() {
    return const CustomLoginTextForm(
      hintText: 'Email giriniz',
      icon: Icon(Icons.person),
    );
  }

  Text _loginText() {
    return const Text(
      'Login',
      style: TextStyle(
        fontSize: 32,
      ),
    );
  }
}
