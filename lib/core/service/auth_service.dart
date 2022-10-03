import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //create person
  Future<User> createPerson(
      String name, String surName, String mail, String password) async {
    var user = await _auth.createUserWithEmailAndPassword(
        email: mail, password: password);

    await _firestore.collection('users').doc(user.user.uid).set(
      {'name': name, 'surName': surName, 'mail': mail, 'password': password},
    );
    return user.user;
  }

  //login code

  Future<User> login(String email, String password) async {
    var user = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    return user.user;
  }

  //signOut
  signOut() {
    _auth.signOut();
  }

  Future<User> signIn(String email, String password) async {
    try {
      var user = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return user.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
