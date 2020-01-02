import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/sign_up_page.dart';

class LoginPage extends StatefulWidget {

  static final String id = 'login_page';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _email, _password;

  _submit() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
    print(_email);
    print(_password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Instagram',
              style: TextStyle(fontSize: 50.0, fontFamily: 'Billabong'),
            ),
            Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (input) => !input.contains('@') ? 'Email non valide' : null,
                      onSaved: (input) => _email = input,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'Mot de passe'),
                      validator: (input) => input.length <= 6 ? 'Doit contenir au moins six caractères' : null,
                      onSaved: (input) => _password = input,
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: 250.0,
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      onPressed: _submit,
                      color: Colors.blue,
                      child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 18.0),),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: 250.0,
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      onPressed: () => Navigator.pushNamed(context, SignupPage.id),
                      color: Colors.blue,
                      child: Text('Créer un compte', style: TextStyle(color: Colors.white, fontSize: 18.0),),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
