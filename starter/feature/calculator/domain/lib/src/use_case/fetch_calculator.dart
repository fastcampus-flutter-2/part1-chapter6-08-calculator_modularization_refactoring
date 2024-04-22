import 'package:calculator_modularization_domain/domain.dart';

class FetchCalculatorUseCase implements IUseCase<CalculatorEntity, void> {
  final ICalculatorRepository _calculatorRepository;

  FetchCalculatorUseCase(this._calculatorRepository);

  @override
  Future<CalculatorEntity> execute([void params]) async {
    final CalculatorEntity entity = await _calculatorRepository.fetch();
    return entity;
  }
}
