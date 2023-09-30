import 'package:furniture_app/screens/home.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color.fromRGBO(63, 115, 111, 1);
const kAccentColor = Color.fromRGBO(246, 172, 63, 1);

void main() {
  runApp(const AppRoot());
}

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
