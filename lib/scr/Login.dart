import 'package:flutter/material.dart';
import 'package:myflutter_app/scr/validatorData.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with ValidationData{
  final formkey=GlobalKey<FormState>();
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Form(key: formkey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
      children: <Widget>[emailFiled(), passWordFiled(), submitButton()],
    ),
        ));
  }

  Widget emailFiled() {
    return TextFormField(onSaved: (String v){
      email=v;
    },validator: vEmail,
      keyboardType: TextInputType.emailAddress,
      decoration:
          InputDecoration(hintText: "you@example.com", labelText: "Email"),
    );
  }

  Widget passWordFiled() {
    return TextFormField(
      onSaved: (String v){
        password=v;
      },
      validator: vPassword,
      obscureText: true,
      decoration:
          InputDecoration(hintText: "you@example.com", labelText: "Email"),
    );
  }

  Widget submitButton() {
    return RaisedButton(
      onPressed: () {

if(formkey.currentState.validate()){
  //send data to web

}

      },
      child: Text("Submit"),
    );
  }
}
