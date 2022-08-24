import 'package:cupromo/src/promo/domain/entities/promo.dart';
import 'package:cupromo/src/promo/domain/repositories/promos_repository_interface.dart';

abstract class FetchPromos {
  Future<List<PromoEntity>> call();
}

class FetchPromosImpl implements FetchPromos {
  final IPromosRepository iPromosRepository;

  FetchPromosImpl(this.iPromosRepository);

  @override
  Future<List<PromoEntity>> call() async {
    return await iPromosRepository.fetchPromos();
  }
}
