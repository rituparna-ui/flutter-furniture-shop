import 'package:furniture_app/main.dart';
import 'package:flutter/material.dart';

class Pill extends StatelessWidget {
  final String str;
  final bool active;
  final Color color;

  const Pill({
    super.key,
    required this.str,
    this.active = false,
    this.color = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          active != false
              ? color != Colors.grey
                  ? color
                  : kAccentColor
              : Colors.white,
        ),
        side: const MaterialStatePropertyAll(
          BorderSide(color: Colors.white),
        ),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 0,
          ),
        ),
      ),
      child: Text(
        str,
        style: TextStyle(
          color: active == true ? Colors.white : Colors.grey,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
