import 'package:dartz/dartz.dart';

import '../entity/carro_entity.dart';

abstract class GetCarrosPorCorRepository {
  Either<Exception, CarroEntity> call(String cor);
}
