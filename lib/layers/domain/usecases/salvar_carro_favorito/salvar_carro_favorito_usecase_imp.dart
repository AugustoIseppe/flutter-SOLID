import '../../entitites/carro_entity.dart';
import '../../repositories/salvar_carro_favorito_repository.dart';
import 'salvar_carro_favorito_usecase.dart';

class SalvarCarroFavoritoUsecaseImp implements SalvarCarroFavoritoUsecase {
  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;
  SalvarCarroFavoritoUsecaseImp(this._salvarCarroFavoritoRepository);

  @override
  Future<bool> call(CarroEntity carroEntity) async {
    carroEntity.setLogica();
    return await _salvarCarroFavoritoRepository(carroEntity);
  }
}
