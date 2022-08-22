import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PromoInsertPage extends StatefulWidget {
  const PromoInsertPage({Key? key}) : super(key: key);

  @override
  State<PromoInsertPage> createState() => _PromoInsertPageState();
}

class _PromoInsertPageState extends State<PromoInsertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Modular.to.navigate('/promo'),
        ),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              labelText: 'Nome do produto',
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              labelText: 'Preço',
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              labelText: 'Descrição',
            ),
          ),
          ElevatedButton(
            onPressed: () => Modular.to.navigate('/promo'),
            child: Text('Cadastrar'),
          ),
        ],
      ),
    );
  }
}
