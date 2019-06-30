import 'package:local_auth/local_auth.dart';
import 'package:flutter/services.dart';

class LocalAuthenticationService {
  final _auth = LocalAuthentication();

  bool isAuthenticated = false;

  Future<void> authenticate() async {
    try {
      isAuthenticated = await _auth.authenticateWithBiometrics(
        localizedReason: 'authenticate to access',
        useErrorDialogs: true,
        stickyAuth: true,
      );
    } on PlatformException catch (e) {
      print(e);
    }
  }
}
