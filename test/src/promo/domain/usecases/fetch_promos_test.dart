import 'package:cupromo/src/promo/domain/entities/promo.dart';
import 'package:cupromo/src/promo/domain/repositories/promos_repository_interface.dart';
import 'package:cupromo/src/promo/domain/usecases/fetch_promos.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class PromoRepositoryMock extends Mock implements IPromosRepository {}

void main() {
  final promoRepository = PromoRepositoryMock();
  final fetch_promos = FetchPromosImpl(promoRepository);

  test('Deve retornar uma lista de promoções', () async {
    when(() => promoRepository.fetchPromos()).thenAnswer((_) => Future.value(<PromoEntity>[]));

    final result = await fetch_promos();

    expect(result, isA<List<PromoEntity>>());
  });
}
