import 'package:arquitetura/layers/domain/entity/carro_entity.dart';

abstract class GetCarrosPorCorUsecase {
  CarroEntity call(String cor);
}
