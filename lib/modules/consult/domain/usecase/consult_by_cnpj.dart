import 'package:dartz/dartz.dart';
import 'package:flutter_app_consult_cnpj/modules/consult/domain/entities/result_CNPJ.dart';
import 'package:flutter_app_consult_cnpj/modules/consult/domain/errors/result_error.dart';
import 'package:flutter_app_consult_cnpj/modules/consult/domain/repositories/consult_by_cnpj_repository.dart';

abstract class ConsultByCnpj {
  Future<Either<ResultErrorCNPJ, ResultCnpj>> call(String? cnpj);
}

class ConsultByCnpjImpl implements ConsultByCnpj {
  final ConsultByCnpjRepository cnpjRepository;

  ConsultByCnpjImpl(this.cnpjRepository);

  @override
  Future<Either<ResultErrorCNPJ, ResultCnpj>> call(String? cnpj) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
