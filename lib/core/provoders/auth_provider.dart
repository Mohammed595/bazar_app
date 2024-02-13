import 'package:bazar_app/core/service/remote_data/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final firebaseAuthProvider = Provider((ref) => FirebaseAuth.instance);

final authStateChange = StreamProvider((ref) {
  return ref.read(authServProvider).authStateChange();
});
