import 'package:flutter/material.dart';
import 'package:login_page/page/Register_page.dart';
import 'package:login_page/page/login_page.dart';

class loginOrRegisterPage extends StatefulWidget {
  const loginOrRegisterPage({super.key});

  @override
  State<loginOrRegisterPage> createState() => _loginOrRegisterPageState();
}

class _loginOrRegisterPageState extends State<loginOrRegisterPage> {
  //initially show login page
  bool showLoginPage = true;

  //toggle between login and register page
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePages);
    } else {
      return RegisterPage(onTap: togglePages);
    }
  }
}
