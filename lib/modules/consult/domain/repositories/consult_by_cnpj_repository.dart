import 'package:dartz/dartz.dart';
import 'package:flutter_app_consult_cnpj/modules/consult/domain/entities/result_cnpj.dart';
import 'package:flutter_app_consult_cnpj/modules/consult/domain/errors/result_error.dart';

abstract class ConsultByCnpjRepository {
  Future<Either<ResultErrorCNPJ, ResultCnpj>> consultByCnpj(String? cnpj);
}
