import 'package:bazar_app/core/service/local_data/prefs.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final prefsProvider = Provider((ref) {
  return SharedPrefnsSirves();
});
