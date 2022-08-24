import 'package:cupromo/src/promo/domain/entities/promo.dart';
import 'package:cupromo/src/promo/domain/usecases/fetch_promos.dart';

abstract class IPromosRepository {
  Future<List<PromoEntity>> fetchPromos();
}
