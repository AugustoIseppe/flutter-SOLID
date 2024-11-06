import 'package:arquitetura/layers/domain/entity/carro_entity.dart';
import 'package:arquitetura/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:arquitetura/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';

class CarroController {
  final GetCarrosPorCorUsecase _getCarrosPorCorUsecase;
  final SalvarCarroFavoritoUsecase _salvarCarroFavoritoUsecase;

  CarroController(
      this._getCarrosPorCorUsecase, this._salvarCarroFavoritoUsecase) {
    getCarrosPorCor('qualquer cor');
  }

  late CarroEntity carro;

  getCarrosPorCor(String cor) async {
    var result = await _getCarrosPorCorUsecase(cor);
    result.fold(
      (error) => print(error.toString()),
      (success) => carro = success,
    );
  }

  salvarCarroFavorito(CarroEntity carro) async {
    await _salvarCarroFavoritoUsecase(carro);
  }
}
