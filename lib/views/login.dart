import 'package:flutter/material.dart';
import 'package:armspos/controllers/login_controller.dart';
import 'package:virtual_keyboard_multi_language/virtual_keyboard_multi_language.dart';

class LoginPage extends StatefulWidget {
  final LoginController controller;

  LoginPage({required this.controller});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String text="";
  bool shiftEnabled = false;

  TextEditingController _passwordController = TextEditingController();
  bool keyboardOpen=false;
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
      body:ListView(children:[ 
      Center(
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
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    onTap:() => {
                      setState(() {
                         keyboardOpen=true;
                      })
                    },
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
      Container(
                    // Keyboard is transparent
                    color: Colors.grey,
                    child: VirtualKeyboard(
                    // Default height is 300
                    height: 350,
                    // Default height is will screen width
                    width: 600,
                    // Default is black
                    textColor: Colors.white,
                    // Default 14
                    fontSize: 20,
                    // the layouts supported
                    // [A-Z, 0-9]
                    type: VirtualKeyboardType.Alphanumeric,
                    // Callback for key press event
                    onKeyPress: _onKeyPress),
                  ) 
      
      ]
      
      ),
    );
  }

  _onKeyPress(VirtualKeyboardKey key) {
    if (key.keyType == VirtualKeyboardKeyType.String) {
        text = text + (shiftEnabled ? key.capsText.toString() : key.text.toString());
    } else if (key.keyType == VirtualKeyboardKeyType.Action) {
        switch (key.action) {
        case VirtualKeyboardKeyAction.Backspace:
            if (text.length == 0) return;
            text = text.substring(0, text.length - 1);
            break;
        case VirtualKeyboardKeyAction.Return:
            text = text + '\n';
            break;
        case VirtualKeyboardKeyAction.Space:
            text = text + key.text.toString();
            break;
        case VirtualKeyboardKeyAction.Shift:
            shiftEnabled = !shiftEnabled;
            break;
        default:
        }
    }
    // Update the screen
    _passwordController.text = text;
    setState(() {});
}
}
