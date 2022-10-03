import 'package:flutter/material.dart';
import 'package:lol_app/core/helper/text_helper.dart';
import 'package:lol_app/feature/auth/view_model/auth_view_model.dart';
import 'package:lol_app/widgets/custom_login_text_form.dart';
import 'package:provider/provider.dart';

class SignPasswordTextForm extends StatelessWidget {
  const SignPasswordTextForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthViewModel>(
      builder: (context, viewModel, child) {
        return CustomLoginTextForm(
          obscure: true,
          textContoller: viewModel.inPasswordController,
          hintText: StringConstant.password,
          icon: const Icon(Icons.lock),
        );
      },
    );
  }
}
