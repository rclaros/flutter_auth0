import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final Future<void> Function() loginAction;
  final String loginError;

  const LoginPage(this.loginAction, this.loginError, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          onPressed: () async {
            await loginAction();
          },
          child: const Text('Login'),
        ),
        Text(loginError ?? ''),
      ],
    );
  }
}
