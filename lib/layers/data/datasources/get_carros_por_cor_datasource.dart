import 'package:arquitetura/layers/data/dto/carro_dto.dart';

abstract class GetCarrosPorCorDatasource {
  CarroDto call(String cor);
}
