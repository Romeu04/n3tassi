import '../services/auth_service.dart';

class LoginViewModel {
  final AuthService _authService = AuthService();

  Future<bool> loginWithEmailPassword(email, senha) async {
    // Implementar lógica para login com email e senha
    print('entrou');
    return await _authService.signInWithEmailPassword(email, senha);
  }

  Future<bool> loginWithGoogle() async {
    // Implementar lógica para login com Google
    return true; //await _authService.signInWithGoogle();
  }
}
