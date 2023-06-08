import 'package:flutter/material.dart';
import 'package:armspos/controllers/login_controller.dart';

class LoginPage extends StatefulWidget {
  final LoginController controller;

  LoginPage({required this.controller});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _passwordController = TextEditingController();

  String? _passwordErrorText;

  void _submitForm(BuildContext? context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      widget.controller.login();

      if (context != null) {
        Navigator.of(context).pushReplacementNamed('/home');
      }
    }
  }

  String? _validatePassword(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your password';
    }
    return null;
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ARMS POS'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 150.0),
          width: 500,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
              child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 16.0),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'EmployeeID',
                      errorText: _passwordErrorText,
                    ),
                    obscureText: true,
                    validator: _validatePassword,
                    onSaved: (value) {
                      widget.controller.model.password = value!;
                    },
                    onChanged: (_) {
                      setState(() {
                        _passwordErrorText = null;
                      });
                    },
                    textInputAction: TextInputAction.done,
                    onFieldSubmitted: (_) {
                      _submitForm(context);
                    },
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () => _submitForm(context),
                    child: Text('Log In'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
