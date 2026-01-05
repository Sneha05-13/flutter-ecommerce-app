import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  static final _auth = Supabase.instance.client.auth;

  static Future<void> signUp(String email, String password) async {
    await _auth.signUp(email: email, password: password);
  }

  static Future<void> login(String email, String password) async {
    await _auth.signInWithPassword(email: email, password: password);
  }

  static Future<void> logout() async {
    await _auth.signOut();
  }

  static Future<void> resetPassword(String email) async {
    await _auth.resetPasswordForEmail(email);
  }

  static User? get currentUser => _auth.currentUser;
}
