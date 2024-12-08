import '../services/auth_service.dart';

class LoginViewModel {
  final AuthService _authService = AuthService();

  Future<bool> loginWithEmailPassword(email, senha) async {
    return await _authService.signInWithEmailPassword(email, senha);
  }

  Future<bool> loginWithGoogle() async {
    return await _authService.signInWithGoogle();
  }
}
