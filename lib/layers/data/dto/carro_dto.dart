import 'package:arquitetura/layers/domain/entitites/carro_entity.dart';

// Funcionou perfeitamente!
class CarroDto extends CarroEntity {
  String? nomeCarro;
  String? tipoCarro;
  String? placaCarro;
  int? qtdPortasCarro;
  double? valorCarro;

  CarroDto({
    required this.nomeCarro,
    required this.tipoCarro,
    required this.placaCarro,
    required this.qtdPortasCarro,
    required this.valorCarro,
  }) : super(
          nome: nomeCarro!,
          tipo: tipoCarro!,
          placa: placaCarro!,
          qtdPortas: qtdPortasCarro!,
          valor: valorCarro!,
        );

  Map toMap() {
    return {
      'nomeCarro': nomeCarro,
      'tipoCarro': tipoCarro,
      'placaCarro': placaCarro,
      'qtdPortasCarro': qtdPortasCarro,
      'valorCarro': valorCarro,
    };
  }

  factory CarroDto.fromMap(Map map) {
    return CarroDto(
      nomeCarro: map['nome'],
      tipoCarro: map['tipo'],
      placaCarro: map['placa'],
      qtdPortasCarro: map['qtdPortas'],
      valorCarro: map['valor'],
    );
  }
}
