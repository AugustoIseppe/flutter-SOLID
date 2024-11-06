import 'package:arquitetura/layers/data/dto/carro_dto.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarrosPorCorDatasource {
  Either<Exception, CarroDto> call(String cor);
}
