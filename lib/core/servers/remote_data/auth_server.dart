import 'package:bazar_app/core/provoders/auth_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authServProvider =
    Provider((ref) => AuthServer(firebaseAuth: ref.read(firebaseAuthProvider)));

class AuthServer {
  final FirebaseAuth _auth;
  // to cut relation between any instance of AuthServer
  // that will be in any create new instance take the same instate of firebaseAuth
  AuthServer({required FirebaseAuth firebaseAuth}) : _auth = firebaseAuth;

  get auth => _auth;

  Stream<User?> authStateChange() => _auth.authStateChanges();

  // sign up
  void signUp(String email, String password) {
    _auth.createUserWithEmailAndPassword(email: email, password: password);
  }

  // sign in
  Future<User?> signIn(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
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
