import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        Modular.to.navigate('/auth');
      },
    );

    return Scaffold(
      body: Center(
        child: Text('Cupromo', style: TextStyle(fontSize: 35)),
      ),
    );
  }
}
