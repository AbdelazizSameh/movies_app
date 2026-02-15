import 'package:flutter/material.dart';
import '../../../../../core/widgets/app_logo.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [const AppLogo(), TextFormField()],
    );
  }
}
