import 'package:cupromo/src/promo/presenter/promo_detail_page.dart';
import 'package:cupromo/src/promo/presenter/promo_home_page.dart';
import 'package:cupromo/src/promo/presenter/promo_insert_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PromoModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (ctx, args) => const PromoHomePage()),
        ChildRoute('/detail', child: (ctx, args) => const PromoDetailPage()),
        ChildRoute('/insert', child: (ctx, args) => const PromoInsertPage()),
      ];
}
