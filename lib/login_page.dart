import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final formKey = new GlobalKey<FormState>();

  String _username;
  String _password;




  void validateSave()
  {
      final form = formKey.currentState;
      if(form.validate())
        {
          form.save();
          print('Form is valid: Username: $_username Password: $_password');
        }
      else{
        print('Form is invalid: Username: $_username Password: $_password');
      }

  }

  Widget _buildForm()
  {
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.fromLTRB(0, 110, 0, 0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('MyHealthKeeper',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ))
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 120, left: 20, right: 20),
              child: Column(

                children: <Widget>[
                  TextFormField(
                      style: TextStyle(color: Colors.white),
                      validator: (value) => value.isEmpty ? 'Username field can\'t be empty': null,
                      onSaved: (value) => _username = value,
                      decoration: InputDecoration(
                          labelText: 'USERNAME',
                          labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,

                          ),

                          focusedBorder: UnderlineInputBorder(

                              borderSide: BorderSide(color: Colors.white)))
                  ),


                  SizedBox(height: 20),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    validator: (value) => value.isEmpty ? 'Password field can\'t be empty': null,
                    onSaved: (value) => _password = value,
                    decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white))),
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.only(top: 15, left: 20),
                    child: InkWell(
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              decoration: TextDecoration.underline),
                        )),
                  ),
                  SizedBox(height: 40),
                  Container(
                      height: 40,
                      child: Material(
                          borderRadius: BorderRadius.circular(20),
                          shadowColor: Colors.blueAccent,
                          color: Colors.green,
                          elevation: 7,
                          child: GestureDetector(onTap: () {validateSave();},
                              child: Center(
                                  child: Text('Login',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Montserrat')))))),
                  SizedBox(height: 20),
                  Container(
                      height: 40,
                      child: Material(
                          borderRadius: BorderRadius.circular(20),
                          shadowColor: Colors.blueAccent,
                          color: Colors.green,
                          elevation: 7,
                          child: GestureDetector(onTap: () {},
                              child: Center(
                                  child: Text('Create an account',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Montserrat')))))),
                ],
              ))
        ],
      )
    );
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(


      body: _buildForm(),
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.lightBlueAccent,
    );

  }
}
