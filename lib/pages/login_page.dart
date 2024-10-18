import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modular_ui/modular_ui.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MUISignInCard(
          emailController: TextEditingController(),
          passwordController: TextEditingController(),
          onSignInPressed: () async {
            context.goNamed(
              "/home",
            );
          },
          onRegisterNow: () {},
        ),
      ),
    );
  }
}
