import 'package:flutter/material.dart';
import '../styles/login_styles.dart';
import 'home_page.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LoginStyles.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 32, vertical: 48,
          ),
          child: Column(
            children: [
              Image.asset('assets/images/masterball.png',
                  height: 200),
              const SizedBox(height: 16),
              const Text('POKÉDEX',
                  style: LoginStyles.tituloStyle),
              const SizedBox(height: 48),
              TextField(style: LoginStyles.inputStyle,
                  decoration: const InputDecoration(
                      labelText: 'E-mail',
                      labelStyle: LoginStyles.labelStyle)),
              const SizedBox(height: 16),
              TextField(obscureText: true,
                  style: LoginStyles.inputStyle,
                  decoration: const InputDecoration(
                      labelText: 'Senha',

                      labelStyle: LoginStyles.labelStyle)),
              const SizedBox(height: 48),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: LoginStyles.primaryColor,
                    padding: const EdgeInsets.symmetric(
                        vertical: 16),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: const Text(
                    'ENTRAR',
                    style: LoginStyles.botaoStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}