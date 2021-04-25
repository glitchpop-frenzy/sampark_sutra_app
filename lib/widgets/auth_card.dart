import '../screens/home.dart';
import 'package:flutter/material.dart';

import 'input_decoration.dart';
import '../view_model/api_vm.dart';

class AuthCard extends StatefulWidget {
  @override
  _AuthCardState createState() => _AuthCardState();
}

enum AuthMode { Login, Signup }

class _AuthCardState extends State<AuthCard> {
  GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  bool currentStateSave() {
    if (!_formKey.currentState!.validate()) {
      return false;
    }
    print('This is running?');
    _formKey.currentState!.save();
    return true;
  }

  void _signup(String mail, String pwd) async {
    if (!currentStateSave()) {
      return;
    }
    final response = await ApiVM().signup(mail, pwd);

    print(response);
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          elevation: 3,
          behavior: SnackBarBehavior.floating,
          duration: Duration(seconds: 3),
          content: Container(child: Text('$response')),
        ),
      );
    if (response == 'User Registration Successful!!')
      setState(() {
        _authMode = AuthMode.Login;
        _emailController.text = '';
        _confirmPasswordController.text = '';
        _passwordController.text = '';
      });
  }

  Future<void> _login(String mail, String password) async {
    if (!currentStateSave()) {
      return;
    }
    await ApiVM().login(mail, password);
  }

  AuthMode _authMode = AuthMode.Login;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.8,
      shadowColor: Color(0xFF023e8a),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
        width: MediaQuery.of(context).size.width * 0.92,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/icons/SamparkSutra.png'),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  autofocus: false,
                  decoration: inputDec('Email Address', 'Ex. abc@xyz.com'),
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (_emailController.text == '') {
                      return 'This field cannot be blank';
                    } else if (!_emailController.text.contains('@')) {
                      return 'Invalid e-mail Number!!';
                    }
                    return null;
                  },
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      autofocus: false,
                      decoration: inputDec('Password', 'Enter your password'),
                      textInputAction: _authMode == AuthMode.Signup
                          ? TextInputAction.next
                          : TextInputAction.done,
                      controller: _passwordController,
                      obscureText: true,
                      validator: (value) {
                        if (_passwordController.text == '') {
                          return 'This field cannot be blank';
                        } else if (_passwordController.text.length < 8) {
                          return 'The length of the password should be grater tha 8';
                        } else if (_passwordController.text !=
                                _confirmPasswordController.text &&
                            _authMode == AuthMode.Signup) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    if (_authMode == AuthMode.Signup)
                      TextFormField(
                        autofocus: false,
                        decoration: inputDec('Confirm Password', ''),
                        obscureText: true,
                        controller: _confirmPasswordController,
                        validator: (value) {
                          if (_passwordController.text == '') {
                            return 'This field cannot be blank';
                          } else if (_passwordController.text != value) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                      ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                _authMode == AuthMode.Login
                    ? ElevatedButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5)),
                          backgroundColor: MaterialStateProperty.all(
                            Color(0xFF003049),
                          ),
                        ),
                        onPressed: () async {
                          await _login(
                              _emailController.text, _passwordController.text);
                          Navigator.of(context)
                              .pushReplacementNamed(MyHomePage.routeName);
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    : ElevatedButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5)),
                          backgroundColor: MaterialStateProperty.all(
                            Color(0xFF003049),
                          ),
                        ),
                        onPressed: () => _signup(
                          _emailController.text,
                          _passwordController.text,
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                if (_authMode == AuthMode.Login)
                  TextButton(
                    style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(
                            Color(0xFF003049).withOpacity(0.2))),
                    onPressed: () {},
                    child: Text(
                      'forgot Password?',
                      style: TextStyle(color: Color(0xFF003049)),
                    ),
                  ),
                _authMode == AuthMode.Login
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'New to sutra?',
                            style: TextStyle(
                                color: Color(0xFF003049),
                                fontWeight: FontWeight.w500),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _authMode = AuthMode.Signup;
                                _emailController.text = '';
                                _confirmPasswordController.text = '';
                                _passwordController.text = '';
                              });
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: Color(0xFF003049),
                                  fontWeight: FontWeight.w600),
                            ),
                            style: ButtonStyle(
                                overlayColor: MaterialStateProperty.all(
                                    Color(0xFF003049).withOpacity(0.2))),
                          )
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already a member?',
                            style: TextStyle(
                                color: Color(0xFF003049),
                                fontWeight: FontWeight.w500),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _authMode = AuthMode.Login;
                                _emailController.text = '';
                                _confirmPasswordController.text = '';
                                _passwordController.text = '';
                              });
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Color(0xFF003049),
                                  fontWeight: FontWeight.w600),
                            ),
                            style: ButtonStyle(
                                overlayColor: MaterialStateProperty.all(
                                    Color(0xFF003049).withOpacity(0.2))),
                          )
                        ],
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
