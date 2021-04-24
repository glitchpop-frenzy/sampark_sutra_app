import 'package:flutter/material.dart';

class AuthCard extends StatefulWidget {
  @override
  _AuthCardState createState() => _AuthCardState();
}

enum AuthMode { Login, Signup }

class _AuthCardState extends State<AuthCard> {
  GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  InputDecoration? inputDec(String? label, String? hint) {
    return InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Color(0xFF0077b6),
          width: 1,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Color(0xFFf94144),
          width: 1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Color(0xFF03045e),
          width: 1,
        ),
      ),
      labelText: label,
      hintText: hint,
      labelStyle: TextStyle(
        color: Color(0xFF003049),
        fontWeight: FontWeight.bold,
      ),
    );
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
                  decoration: inputDec('E-mail Address', 'Ex. xyz@gmail.com'),
                  controller: _phoneController,
                ),
                if (_authMode == AuthMode.Login)
                  Column(children: [
                    SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      decoration: inputDec('Password', 'Enter your password'),
                      controller: _phoneController,
                    ),
                  ]),
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
                        onPressed: () {},
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
                        onPressed: () {},
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
