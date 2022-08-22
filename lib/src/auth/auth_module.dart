import 'package:cupromo/src/auth/presenter/login_page.dart';
import 'package:cupromo/src/auth/presenter/register_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (ctx, args) => const LoginPage()),
        ChildRoute('/register', child: (ctx, args) => const RegisterPage()),
      ];
}
