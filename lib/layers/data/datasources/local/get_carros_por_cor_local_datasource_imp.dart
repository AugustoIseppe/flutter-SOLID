import 'package:arquitetura/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arquitetura/layers/data/dto/carro_dto.dart';

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
  CarroDto call(String cor) {
    if (cor == 'vermelho') {
      return CarroDto.fromMap(jsonVermelho);
    } else {
      return CarroDto.fromMap(jsonAny);
    }
  }
}
