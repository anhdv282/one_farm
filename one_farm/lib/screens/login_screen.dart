import 'package:flutter/material.dart';
import 'package:one_farm/providers/auth_reposity.dart';
import 'package:one_farm/widgets/login_background.dart';
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
      body: LoginBackground(Text("content widget here")),
    );
  }
}