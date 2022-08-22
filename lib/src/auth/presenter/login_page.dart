import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                labelText: 'Usuário',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.password),
                labelText: 'Senha',
              ),
              obscureText: true,
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => Modular.to.navigate('/auth/register'),
                  child: Text('Cadastrar'),
                ),
                SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () => Modular.to.navigate('/promo'),
                  child: Text('Logar'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
