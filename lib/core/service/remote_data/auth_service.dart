import 'package:bazar_app/core/provoders/auth_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authServProvider = Provider(
  (ref) => AuthService(
    firebaseAuth: ref.read(firebaseAuthProvider),
  ),
);

class AuthService {
  final FirebaseAuth _auth;
  AuthService({required FirebaseAuth firebaseAuth}) : _auth = firebaseAuth;

  get auth => _auth;

  Stream<User?> authStateChange() => _auth.authStateChanges();

  // sign up
  Future<User?> signUp(String email, String password) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      User? user = userCredential.user;

      return user;
    } catch (e) {
      print('errrrror $e');
    }
    return null;
  }

  // sign in
  Future<User?> signIn(String email, String password) async {
    try {
      final userCre = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      User? user = userCre.user;

      return user;
    } catch (e) {
      // Handle sign-in errors here
      print('Sign-in failed: $e');
    }
    return null;
  }

// sign out
  void signOut() {
    _auth.signOut();
  }
}
