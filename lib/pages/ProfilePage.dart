import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final Future<void> Function() logoutAction;
  final String name;
  final String picture;

  const ProfilePage(this.logoutAction, this.name, this.picture, {Key key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 4),
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(picture ?? ''),
            ),
          ),
        ),
        const SizedBox(height: 24),
        Text('Nombre: $name'),
        const SizedBox(height: 48),
        RaisedButton(
          onPressed: () async {
            await logoutAction();
          },
          child: const Text('Cerra sesión'),
        ),
      ],
    );
  }
}
