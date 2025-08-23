import 'package:e_commerce_figma/core/app_colors.dart';
import 'package:e_commerce_figma/presentation/features/home/view/home_page.dart';
import 'package:e_commerce_figma/presentation/widgets/app_buttons.dart';
import 'package:e_commerce_figma/presentation/widgets/app_textFields.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Container(
        color: AppColors.primary,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(hintText: 'Email', controller: emailController, onChange: (String ) {  }, prefixIcon: null,),
            SizedBox(height: 16),
            CustomTextField(
              hintText: 'Password',
              controller: passwordController, onChange: (String ) {  }, prefixIcon: null,
             
            ),
            SizedBox(height: 24),
            CustomButton(
             onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              color: AppColors.white,
              text: 'Login',
              width: double.infinity,
              height: 50,
              
            ),
            
          ],
        ),
      ),
    );
  }
}