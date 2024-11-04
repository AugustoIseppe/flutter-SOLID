import 'package:arquitetura/layers/domain/entitites/carro_entity.dart';

abstract class GetCarrosPorCorUsecase {
  CarroEntity call(String cor);
}
