import 'package:firebase_auth/firebase_auth.dart';
//import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  //final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<bool> signInWithEmailPassword(String email, String password) async {
    try {
      print('fazendo login');
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return userCredential.user != null;
    } catch (e) {
      print('ta com erro dentro do login');
      print(e);
      return false;
    }
  }

  /*Future<bool> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) return false;

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      UserCredential userCredential = await _firebaseAuth.signInWithCredential(credential);
      return userCredential.user != null;
    } catch (e) {
      print(e);
      return false;
    }
  }*/

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
    //await _googleSignIn.signOut();
  }
}
