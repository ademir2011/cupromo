import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextFormField(
          decoration: InputDecoration(
            icon: Icon(Icons.person),
            labelText: 'Usuário',
          ),
          obscureText: true,
        ),
        TextFormField(
          decoration: InputDecoration(
            icon: Icon(Icons.email),
            labelText: 'E-mail',
          ),
          obscureText: true,
        ),
        TextFormField(
          decoration: InputDecoration(
            icon: Icon(Icons.password),
            labelText: 'Senha',
          ),
          obscureText: true,
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => Modular.to.navigate('/auth'),
          child: Text('Cadastrar'),
        ),
      ]),
    );
  }
}
