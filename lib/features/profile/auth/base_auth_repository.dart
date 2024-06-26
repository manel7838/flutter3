import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:pfe/features/profile/models/data_model.dart';

abstract class BaseAuthRepository {
  Stream<auth.User?> get user;
  Future<auth.User?> signUp({
    required String password,
    required User user,
  });
  // Future<void> logInWithGoogle();
  Future<void> logInWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<void> signOut();
}
