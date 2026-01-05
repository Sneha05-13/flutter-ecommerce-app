import 'package:ecommerce_app/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce_app/navigation_menu.dart';
import 'package:ecommerce_app/services/auth_service.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class RLoginForm extends StatefulWidget {
  const RLoginForm({super.key});
  @override
  State<RLoginForm> createState() => _RLoginFormState();
}

class _RLoginFormState extends State<RLoginForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool loading = false;
  bool rememberMe = true;
  bool showPassword = false;

  Future<void> loginUser() async {
    setState(() => loading = true);
    try {
      await AuthService.login(
        emailController.text.trim(),
        passwordController.text.trim(),
      );
      Get.offAll(() => const NavigationMenu());
    } catch (e) {
      Get.snackbar(
        'Login Failed',
        e.toString(),
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
    setState(() => loading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: RSizes.lg, vertical: RSizes.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.direct_right),
                labelText: 'Email',
                border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(RSizes.inputFieldRadius)),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: RSizes.inputFieldVerticalPadding,
                    horizontal: RSizes.inputFieldHorizontalPadding),
              ),
            ),
            const SizedBox(height: RSizes.spaceBtwInputFields),
            TextFormField(
              controller: passwordController,
              obscureText: !showPassword,
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.password_check),
                labelText: 'Password',
                border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(RSizes.inputFieldRadius)),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: RSizes.inputFieldVerticalPadding,
                    horizontal: RSizes.inputFieldHorizontalPadding),
                suffixIcon: IconButton(
                  icon: Icon(showPassword ? Iconsax.eye : Iconsax.eye_slash),
                  onPressed: () => setState(() => showPassword = !showPassword),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                        value: rememberMe,
                        onChanged: (v) => setState(() => rememberMe = v!)),
                    const Text('Remember Me'),
                  ],
                ),
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text('Forgot Password?'),
                ),
              ],
            ),
            const SizedBox(height: RSizes.defaultSpace),
            SizedBox(
              width: RSizes.buttonWidth,
              child: ElevatedButton(
                onPressed: loading ? null : loginUser,
                child: loading
                    ? const CircularProgressIndicator(color: Colors.white)
                    : const Text('Login', style: TextStyle(fontSize: 18)),
              ),
            ),
            const SizedBox(height: RSizes.spaceBtwItems),
            SizedBox(

              width: RSizes.buttonWidth,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child:
                    const Text('Create Account', style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
