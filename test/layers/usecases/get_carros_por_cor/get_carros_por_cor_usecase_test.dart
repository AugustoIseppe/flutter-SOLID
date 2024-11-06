import 'package:arquitetura/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:arquitetura/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:arquitetura/layers/domain/entity/carro_entity.dart';
import 'package:arquitetura/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:arquitetura/layers/domain/usecases/get_carros_por_cor/get_carros_por_por_cor_usecase_imp.dart';
import 'package:test/test.dart';

main() {
  test('Deve retornar uma instância de carro quando passado qualquer cor', () {
    GetCarrosPorCorUsecase usecase = GetCarrosPorPorCorUsecaseImp(
        GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDatasourceImp()));
    var result = usecase('qualquer cor');
    late CarroEntity resultExpected;

    result.fold((l) => null, (r) => resultExpected = r);

    expect(resultExpected, isA<CarroEntity>());
  });

  test('Deve retornar uma carro de 5 portas quando a cor for vermelha', () {
    GetCarrosPorCorUsecase usecase = GetCarrosPorPorCorUsecaseImp(
        GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDatasourceImp()));
    var result = usecase('vermelho');
    late CarroEntity resultExpected;

    result.fold((l) => null, (r) => resultExpected = r);

    expect(resultExpected.qtdPortas, 5);
  });

  test('Deve retornar uma carro de 10 portas quando a cor for azul', () {
    GetCarrosPorCorUsecase usecase = GetCarrosPorPorCorUsecaseImp(
        GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDatasourceImp()));
    var result = usecase('azul');

    late CarroEntity resultExpected;

    result.fold((l) => null, (r) => resultExpected = r);

    expect(resultExpected.qtdPortas, 10);
  });
}
