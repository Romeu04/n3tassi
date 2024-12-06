import '../services/auth_service.dart';

class HomeViewModel {
  final AuthService _authService = AuthService();

  Future<void> logout() async {
    await _authService.signOut();
  }
}
