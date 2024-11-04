import 'package:arquitetura/layers/domain/entitites/carro_entity.dart';
import 'package:arquitetura/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';

class GetCarrosPorPorCorUsecaseImp implements GetCarrosPorCorUsecase {
  @override
  CarroEntity call(String cor) {
    if (cor.contains('vermelho')) {
      // return CarroEntity('Fusca', 'classico', 'ABC-1234', 5, 10000);
      return CarroEntity(
          nome: 'Fusca',
          tipo: 'classico',
          placa: 'ABC-1234',
          qtdPortas: 5,
          valor: 10000);
    } else if (cor.contains('azul')) {
      // return CarroEntity('Gol', 'popular', 'DEF-5678', 10, 20000);
      return CarroEntity(
          nome: 'Gol',
          tipo: 'popular',
          placa: 'DEF-5678',
          qtdPortas: 10,
          valor: 20000);
    } else {
      // return CarroEntity('Civic', 'luxo', 'GHI-9101', 4, 50000);
      return CarroEntity(
          nome: 'Civic',
          tipo: 'luxo',
          placa: 'GHI-9101',
          qtdPortas: 4,
          valor: 50000);
    }
  }
}
