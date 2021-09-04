import 'package:dartz/dartz.dart';
import 'package:flutter_app_consult_cnpj/modules/consult/domain/entities/result_cnpj.dart';
import 'package:flutter_app_consult_cnpj/modules/consult/domain/repositories/consult_by_cnpj_repository.dart';
import 'package:flutter_app_consult_cnpj/modules/consult/domain/usecase/consult_by_cnpj.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class ConsultByCnpjRepositoryMock extends Mock
    implements ConsultByCnpjRepository {}

void main() {
  var mock = ConsultByCnpjRepositoryMock();
  var usecase = ConsultByCnpjImpl(mock);
  test('consult by cnpj ...', () async {
    when(mock.consultByCnpj(any)).thenAnswer((_) async => Right(ResultCnpj()));

    var result = await usecase('24254079000145');

    expect(result, isA<ResultCnpj>());
  });
}
