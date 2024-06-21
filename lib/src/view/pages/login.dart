import 'package:flutter/material.dart';
import 'package:pizzaria_biella/src/view/widgets/entrar.dart';
import 'package:pizzaria_biella/src/view/widgets/inputs.dart';
import 'package:pizzaria_biella/theme/app_color.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Biella Pizza',
      debugShowCheckedModeBanner: false,
      home: Login_(),
    );
  }
}

class Login_ extends StatelessWidget {
  const Login_({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightThemeColor.primary_2,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset(
                    '../assets/images/login/logo.png',
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.75,
                  ),
                ),
                const SizedBox(height: 40),
                inputs('E-mail'),
                const SizedBox(height: 20),
                inputs('Senha', senha: true),
                const SizedBox(height: 30),
                botao('Entrar'),
                const SizedBox(height: 20),
                TextButton(
                  child: const Text(
                    'Não possui conta ? ',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text(
                    'Cadastre-se aqui !',
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
