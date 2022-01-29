import 'package:firebase_auth/firebase_auth.dart';
import 'package:shop_app/models/user_model.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user onject
  UserModel? _userFirebase(User user) {
    return user != null ? UserModel(name: user.displayName.toString()) : null;
  }

  // auth cahnge user stream

  //sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFirebase(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

//stream
  Stream<UserModel?> get user {
    return _auth.authStateChanges().map((User? user) => _userFirebase(user!));
  }

//sign in email

//register new

  Future registerNewUser(String email , String password) async {
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return _userFirebase(user!);
    }catch(e){
      print(e.toString());
      return null;
    }

  }


  


//signout
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
