import 'package:flutter_arch/data/repository/interface/counter_repo.dart';
import 'package:flutter_arch/domain/use_case/interface/counter_case.dart';

class CounterCaseImpl extends CounterCase {
  final CounterRepository _counterRepository;

  CounterCaseImpl(this._counterRepository);

  @override
  int getLastCount() => _counterRepository.getLastCount();

  @override
  Future<int> saveCount(int count) => _counterRepository.saveCount(count);
}