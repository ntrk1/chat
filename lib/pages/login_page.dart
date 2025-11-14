
import 'package:chat/widgets/widgets.dart';


import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Logo(),
            _Form(),
            Labels(ruta: '/register', text: Text('Acceso a nuevos usuarios'),)
          ],
        ),
      ),
    );
  }
}



class _Form extends StatefulWidget {

  const _Form();

  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final nameController = TextEditingController();
    return  Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomInput(
            controller: nameController,
            hintText: 'Nombre',
            icon: Icons.email_outlined,
            type: TextInputType.text,
            obscureText: false,
          ),
          CustomInput(
            controller: emailController,
            hintText: 'Email',
            icon: Icons.email_outlined,
            type: TextInputType.emailAddress,
            obscureText: false,
          ),
          CustomInput(
            controller: passwordController,
            hintText: 'Password',
            icon: Icons.password_outlined,
            type: TextInputType.visiblePassword,
            obscureText: true,
          ),
          CustomButton(
            icon: Icons.check_box_outline_blank_outlined, 
            onPressed: () {
              
            }, 
            label: Text('Acceder')
            )

        ],
      ),
    );
  }
}

