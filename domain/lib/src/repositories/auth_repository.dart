import 'package:flutter/material.dart';

abstract class AuthRepository {
  const AuthRepository();

  Future<void> signIn(String email, String password, BuildContext context);

  Future<void> signOut();

  Future<void> resetSession();

  bool isAuthorized();
}
