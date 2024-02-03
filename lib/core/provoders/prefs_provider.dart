import 'package:bazar_app/core/servers/prefs.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final prefsProvider = Provider((ref) {
  return SharedPrefnsSirves();
});
