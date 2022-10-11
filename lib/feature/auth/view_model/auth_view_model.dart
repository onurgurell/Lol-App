import 'package:flutter/material.dart';
import 'package:lol_app/feature/home/view/home_view.dart';

import '../../../core/service/auth_service.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthService _authService = AuthService();
  //sıgn up controller
  final TextEditingController _upNameController = TextEditingController();
  final TextEditingController _upSurNameController = TextEditingController();
  final TextEditingController _upMailController = TextEditingController();
  final TextEditingController _upPasswordController = TextEditingController();
  final TextEditingController _upAgainPasswordController =
      TextEditingController();

  get upNameController => this._upNameController;
  get upSurNameController => this._upSurNameController;
  get upMailController => this._upMailController;
  get upPasswordController => this._upPasswordController;
  get upAgainPasswordController => this._upAgainPasswordController;

  //sign ın controller
  final TextEditingController _inNameController = TextEditingController();
  final TextEditingController _inPasswordController = TextEditingController();

  get inNameController => this._inNameController;
  get inPasswordController => this._inPasswordController;

  void createPerson() {
    try {
      _authService.createPerson(
        _upNameController.text,
        _upSurNameController.text,
        _upMailController.text,
        _upPasswordController.text,
      );
      notifyListeners();
    } catch (e) {
      print('AuthViewModel / auth $e');
    }
  }

  void signInUser(BuildContext context) {
    try {
      _authService
          .signIn(
            _inNameController.text,
            _inPasswordController.text,
          )
          .then(
            (value) => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePageView(),
              ),
            ),
          );
      notifyListeners();
    } catch (e) {
      print('Giriş yapilamadi !!!! $e');
    }
  }
}
