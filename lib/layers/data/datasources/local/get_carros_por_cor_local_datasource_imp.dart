import 'package:arquitetura/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arquitetura/layers/data/dto/carro_dto.dart';
import 'package:dartz/dartz.dart';

class GetCarrosPorCorLocalDatasourceImp implements GetCarrosPorCorDatasource {
  final jsonVermelho = {
    'nome': 'Astra',
    'tipo': 'GM',
    'placa': '123123',
    'qtdPortas': 5,
    'valor': 10000.00,
  };

  final jsonAny = {
    'nome': 'Astra',
    'tipo': 'GM',
    'placa': '123123',
    'qtdPortas': 10,
    'valor': 10000.00,
  };

  @override
  Either<Exception, CarroDto> call(String cor) {
    try {
      if (cor.contains('vermelho')) {
        return Right(CarroDto.fromMap(jsonVermelho));
      }
      return Right(CarroDto.fromMap(jsonAny));
    } catch (e) {
      return Left(Exception('Error in datasource'));
    }
  }
}
