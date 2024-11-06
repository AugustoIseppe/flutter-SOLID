import 'package:arquitetura/layers/domain/entity/carro_entity.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarrosPorCorUsecase {
  Either<Exception, CarroEntity> call(String cor);
}
