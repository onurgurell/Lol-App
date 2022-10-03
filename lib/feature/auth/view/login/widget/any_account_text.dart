import 'package:flutter/material.dart';
import 'package:lol_app/feature/auth/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';

import '../../../../../core/helper/text_helper.dart';
import 'sign_up_bottom_sheet.dart';

class AnyAccountText extends StatelessWidget {
  const AnyAccountText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthViewModel>(
      builder: (context, viewModel, child) {
        return TextButton(
          onPressed: () {
            signUpBottomSheet(context, viewModel);
          },
          child: const Text(
            StringConstant.dontHaveAnyAccount,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
        );
      },
    );
  }
}
