import 'package:flutter/material.dart';
import 'package:lol_app/feature/auth/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';

import '../../../../../widgets/custom_login_text_form.dart';
import '../../../../../core/helper/text_helper.dart';

class SignEmailTextForm extends StatelessWidget {
  const SignEmailTextForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthViewModel>(builder: (context, viewModel, child) {
      return CustomLoginTextForm(
        textContoller: viewModel.inNameController,
        hintText: StringConstant.email,
        icon: const Icon(Icons.mail),
      );
    });
  }
}
