  import 'package:flutter/material.dart';

  Widget inputs(String label, {bool senha = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 55),
      child: TextField(
        obscureText: senha,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
          labelText: label,
          labelStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
                color: Color.fromRGBO(255, 71, 10, 1), width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
                color: Color.fromRGBO(255, 71, 10, 1), width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
                color: Color.fromRGBO(255, 124, 10, 1), width: 2),
          ),
        ),
      ),
    );
  }
