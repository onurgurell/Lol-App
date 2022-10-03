import 'package:flutter/material.dart';

import '../../../view_model/auth_view_model.dart';
import '../../../../../widgets/custom_login_text_form.dart';
import '../../../../../widgets/custom_sign_buttons.dart';
import '../../../../../core/helper/text_helper.dart';

Future<dynamic> signUpBottomSheet(
    BuildContext context, AuthViewModel viewModel) {
  return showModalBottomSheet(
      backgroundColor: const Color.fromARGB(222, 50, 186, 240),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      context: context,
      builder: ((context) {
        return _bottomSheetPadding(viewModel);
      }));
}

Padding _bottomSheetPadding(AuthViewModel viewModel) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _bottomSheetCreateText(),
        _bottomSheetNameText(viewModel),
        _bottomSheetSurnameText(viewModel),
        _bottomSheetEmailText(viewModel),
        _bottomSheetPasswordText(viewModel),
        _bottomSheetAgainPasswordText(viewModel),
        _bottomSheetCreateButton(viewModel)
      ],
    ),
  );
}

Text _bottomSheetCreateText() {
  return const Text(
    StringConstant.createUser,
    style: TextStyle(
      fontSize: 22,
    ),
  );
}

CustomSignButton _bottomSheetCreateButton(AuthViewModel viewModel) {
  return CustomSignButton(
    onPressed: () {
      viewModel.createPerson();
    },
    title: StringConstant.create,
  );
}

CustomLoginTextForm _bottomSheetNameText(AuthViewModel viewModel) {
  return CustomLoginTextForm(
    textContoller: viewModel.upNameController,
    hintText: 'Name',
    icon: const Icon(Icons.person),
  );
}

CustomLoginTextForm _bottomSheetSurnameText(AuthViewModel viewModel) {
  return CustomLoginTextForm(
    textContoller: viewModel.upSurNameController,
    hintText: 'Surname',
    icon: const Icon(Icons.person_add),
  );
}

CustomLoginTextForm _bottomSheetEmailText(AuthViewModel viewModel) {
  return CustomLoginTextForm(
    textContoller: viewModel.upMailController,
    hintText: 'Enter mail',
    icon: const Icon(Icons.mail),
  );
}

CustomLoginTextForm _bottomSheetPasswordText(AuthViewModel viewModel) {
  return CustomLoginTextForm(
    obscure: true,
    textContoller: viewModel.upPasswordController,
    hintText: 'Password',
    icon: const Icon(Icons.lock),
  );
}

CustomLoginTextForm _bottomSheetAgainPasswordText(AuthViewModel viewModel) {
  return CustomLoginTextForm(
    obscure: true,
    textContoller: viewModel.upAgainPasswordController,
    hintText: 'Please again password',
    icon: const Icon(Icons.mail),
  );
}
