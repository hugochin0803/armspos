import 'package:armspos/models/user_model.dart';

class LoginController {
  final LoginModel model;

  LoginController(this.model);

  void login() {
    print('Password: ${model.password}');
    // Perform login with entered email and password
  }
}
