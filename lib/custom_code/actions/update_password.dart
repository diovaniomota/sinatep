// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';

Future<bool> updatePassword(String newPassword) async {
  if (newPassword.trim().isNotEmpty && newPassword.length > 6) {
    final User? user = FirebaseAuth.instance.currentUser;
    user?.updatePassword(newPassword);
    return true;
  }
  return false;
}
