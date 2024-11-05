class CarroEntity {
  String nome;
  String tipo;
  String placa;
  int qtdPortas;
  double valor;

  CarroEntity({
    required this.nome,
    required this.tipo,
    required this.placa,
    required this.qtdPortas,
    required this.valor,
  });

  // Isso é uma rega de negócio!
  double get valorReal {
    return valor * qtdPortas;
  }

  setLogica() {
    if (valorReal > 10000) {
      valor *= 2;
    }
  }

  @override
  String toString() {
    return 'Carro{nome: $nome, tipo: $tipo, placa: $placa, qtdPortas: $qtdPortas, valor: $valor}';
  }
}
