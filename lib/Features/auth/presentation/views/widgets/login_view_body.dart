import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_routes.dart';
import '../../../../../core/widgets/app_logo.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'custom_switch.dart';
import 'custom_text_form_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(19.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 190),
            const AppLogo(),
            const SizedBox(height: 69),
            CustomTextFormField(
              labelText: "Email",
              hintText: "Enter your email",
              prefixIcon: AppAssets.emailIcon,
            ),
            const SizedBox(height: 22.4),
            CustomTextFormField(
              labelText: "Password",
              hintText: "Enter your password",
              prefixIcon: AppAssets.lockIcon,
              suffixIcon: Icons.visibility_off,
            ),
            const SizedBox(height: 40),
            CustomButton(
              text: 'Login',
              onPressed: () =>
                  GoRouter.of(context).pushReplacement(AppRoutes.homePath),
            ),
            const SizedBox(height: 40),
            const CustomSwitch(),
          ],
        ),
      ),
    );
  }
}
