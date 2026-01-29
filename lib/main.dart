import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:bebasaja/app/screens/login_screen.dart';
import 'package:bebasaja/app/screens/main_screen.dart';
import 'package:bebasaja/infra/storage/storage_utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<bool> _checkTokens() async {
    final accessToken = await SecureStorageUtil.storage.read(key: 'access_token');
    final idToken = await SecureStorageUtil.storage.read(key: 'id_token');
    return accessToken != null && idToken != null;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.pink,
          primary: Colors.pinkAccent,
        ),
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Observer(
        builder: (context) {
          return FutureBuilder(
            future: _checkTokens(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else if (snapshot.hasError) {
                return Scaffold(
                  body: Center(
                    child: Text('Error: ${snapshot.error}'),
                  ),
                );
              } else if (snapshot.data == false) {
                return LoginScreen();
              } else {
                return MainScreen();
              }
            },
          );
        },
      ),
    );
  }
}
