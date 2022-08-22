import 'package:cupromo/src/auth/auth_module.dart';
import 'package:cupromo/src/promo/promo_module.dart';
import 'package:cupromo/src/splash_screen_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (ctx, args) => const SplashScreenPage()),
        ModuleRoute('/auth', module: AuthModule()),
        ModuleRoute('/promo', module: PromoModule()),
      ];
}
