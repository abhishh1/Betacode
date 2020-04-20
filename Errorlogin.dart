import 'package:app4/services/auth.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final AuthService _authService = AuthService();
  final _formkey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';
  bool loading = true;
  @override
  Widget build(BuildContext context) {
    return 
         Scaffold(
         //In 8-10 words : Submit diff between materialapp and scaffold
            body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                //Add a fade animation to decorationimage
                    image: AssetImage('assets/error.jpg'), fit: BoxFit.fill)),
                    //Comment down the ans: Can we pull single asset multiple times?
            padding: const EdgeInsets.only(top: 200.0, left: 50.0, right: 50.0),
            child: Form(
              key: _formkey,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 100.0,
                    child: Text(
                     '#############',
                      style: TextStyle(fontFamily: 'Rockdiz', fontSize: 30.0),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  //Insert input form field
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: '##########',
                        hintStyle: TextStyle(fontFamily: 'Prestage')),
                    onChanged: (val) {
                      setState(() => password = val);
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  //Write the code for inserting push button for logging in
                    color: Colors.white,
                    onPressed: () async {
                      if (_formkey.currentState.validate()) {
                        setState(() => loading = true);
                        dynamic result = await _authService
                            //Complete the line.
                        if (result == null) {
                          setState(() => error = ' ');
                        }
                      }
                    },
                  ),
                  //load error sized box here showing the error in bold
                ],
              ),
            ),
          ));
  }
}
//Congo! You are done.
