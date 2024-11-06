import 'package:dartz/dartz.dart';

import '../../entity/carro_entity.dart';

abstract class SalvarCarroFavoritoUsecase {
  Future<Either<Exception, bool>> call(CarroEntity carroEntity);
}
