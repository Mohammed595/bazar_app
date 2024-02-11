import 'package:bazar_app/core/feature/testFeature/data/model.dart';
import 'package:bazar_app/core/feature/testFeature/data/servier_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fetchServiceProvider = Provider<FetchSev>((ref) {
  return FetchSev();
});

final dataProvider = FutureProvider<List<PersonModel>>((ref) async {
  final fetchService = ref.read(fetchServiceProvider);
  return await fetchService.getData();
});
