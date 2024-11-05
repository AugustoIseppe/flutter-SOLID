import 'package:arquitetura/layers/domain/entity/carro_entity.dart';
import 'package:test/test.dart';

main() {
  test('Espero que a entidade não seja nula', () {
    CarroEntity carroEntity =
        // CarroEntity('Astra', 'Carro', 'CYF8380', 5, 10000);
        CarroEntity(
            nome: 'Astra',
            tipo: 'Carro',
            placa: 'CYF8380',
            qtdPortas: 5,
            valor: 10000);
    expect(carroEntity, isNotNull);
  });

  test('Espero que o valor do carro seja maior que 10000', () {
    CarroEntity carroEntity =
        // CarroEntity('Astra', 'Carro', 'CYF8380', 5, 11000);
        CarroEntity(
            nome: 'Astra',
            tipo: 'Carro',
            placa: 'CYF8380',
            qtdPortas: 5,
            valor: 11000);
    expect(carroEntity.valor, 11000);
  });

  test('Espero que a quantidade de portas seja = 2', () {
    CarroEntity carroEntity =
        // CarroEntity('Astra', 'Carro', 'CYF8380', 2, 11000);
        CarroEntity(
            nome: 'Astra',
            tipo: 'Carro',
            placa: 'CYF8380',
            qtdPortas: 2,
            valor: 11000);
    expect(carroEntity.qtdPortas, 2);
  });

  test('Espero que o valor real seja = 22000', () {
    CarroEntity carroEntity =
        // CarroEntity('Astra', 'Carro', 'CYF8380', 2, 15000);
        CarroEntity(
            nome: 'Astra',
            tipo: 'Carro',
            placa: 'CYF8380',
            qtdPortas: 2,
            valor: 15000);
    carroEntity.setLogica();
    var resultadoEsperado = 30000;
    expect(carroEntity.valor, resultadoEsperado);
  });
}
