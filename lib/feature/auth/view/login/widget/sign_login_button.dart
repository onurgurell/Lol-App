import 'package:flutter/material.dart';
import 'package:lol_app/feature/auth/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';

import '../../../../../widgets/custom_sign_buttons.dart';
import '../../../../../core/helper/text_helper.dart';

class SignLoginButton extends StatelessWidget {
  const SignLoginButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthViewModel>(
      builder: (context, viewModel, child) {
        return CustomSignButton(
          onPressed: () {
            viewModel.signInUser(context);

            print('giriş başarli');
          },
          title: StringConstant.enterButton,
        );
      },
    );
  }
}
