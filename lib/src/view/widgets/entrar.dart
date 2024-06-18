import 'package:flutter/material.dart';

Widget botao(String texto) {
  return
  Container(
    padding: const EdgeInsets.symmetric(horizontal: 55),
    child: SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(255, 71, 10, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          padding: const EdgeInsets.symmetric(vertical: 35),
        ),
        child: Text(
          texto,
          style: const  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}
