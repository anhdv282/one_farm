import 'package:flutter/material.dart';
import 'package:one_farm/providers/auth_reposity.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthRepository>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Đăng nhập'),
        ),
        body: Padding (
          padding: EdgeInsets.all(32),
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Đi Chung',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w500,
                      fontSize: 30
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(32, 16, 32, 0),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'User name'
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(32, 16, 32, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Password'
                  ),
                ),
              ),
              FlatButton(
                onPressed: (){
                  //forgot password screen
                },
                textColor: Colors.blue,
                child: Text('Forgot Password'),
              ),
              Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                    nameController.text = '0342884885';
                    passwordController.text = '20071567';
                    auth.login(nameController.text, passwordController.text);
                  },
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Text('Does not have account?'),
                    FlatButton(
                      textColor: Colors.blue,
                      child: Text(
                        'Sign in',
                        style: TextStyle(fontSize: 14),
                      ),
                      onPressed: () {
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              )
            ],
          ),
        )
    );
  }
}