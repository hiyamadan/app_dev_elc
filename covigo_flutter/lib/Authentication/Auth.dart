
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
class Uuser{
  Uuser({@required this.uid});
  final String uid;
}
abstract class AuthBase{
  Future<Uuser> currentUser();
  Future<void> signOut();
  Future<Uuser> signInWithEmailAndPassword(String email,String password);
  Future<Uuser> createUserWithEmailAndPassword(String email,String password);
}
class Auth implements AuthBase{
  final _firebaseAuth=FirebaseAuth.instance;
  Uuser _userFromFirebase(User user){
    if(user==null)
      return null;
    return Uuser(uid: user.uid);
  }
  @override
  Future<Uuser> currentUser() async {
    final user= await _firebaseAuth.currentUser;
    return _userFromFirebase(user);
  }
  @override
  Future<Uuser> signInWithEmailAndPassword(String email,String password) async{
    final authResult=await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    return _userFromFirebase(authResult.user);
  }
  @override
  Future<Uuser> createUserWithEmailAndPassword(String email,String password) async{
    final authResult=await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    return _userFromFirebase(authResult.user);
  }
  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}