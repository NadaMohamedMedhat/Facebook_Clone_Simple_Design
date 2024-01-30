import 'package:facebook_clone/ReusableComponents/colors.dart';
import 'package:facebook_clone/ReusableComponents/custom_text_Button.dart';
import 'package:facebook_clone/ReusableComponents/custom_text_form_field.dart';
import 'package:facebook_clone/Screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String route = 'LoginScreen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/facebook-logo.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                type: TextInputType.emailAddress,
                prefixIcon: Icons.person,
                hintText: 'Email or Phone',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                type: TextInputType.visiblePassword,
                prefixIcon: Icons.lock,
                hintText: 'Password',
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 350,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: secondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(HomeScreen.route);
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: white,
                        fontSize: 20,
                      ),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextButton(title: 'Sign Up For Facebook'),
              CustomTextButton(title: 'Forget Password?'),
            ],
          ),
        ),
      ),
    );
  }
}
