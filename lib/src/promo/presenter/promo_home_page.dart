import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PromoHomePage extends StatefulWidget {
  const PromoHomePage({Key? key}) : super(key: key);

  @override
  State<PromoHomePage> createState() => _PromoHomePageState();
}

class _PromoHomePageState extends State<PromoHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Olá Fulano'),
            ),
            ListTile(
              title: const Text('Cadastrados'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Curtidos'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Perfil'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          height: size.width,
          child: ListView.builder(
            itemBuilder: (ctx, index) {
              return Card(
                child: Text('item'),
              );
            },
            itemCount: 15,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Modular.to.navigate('/promo/insert'),
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
