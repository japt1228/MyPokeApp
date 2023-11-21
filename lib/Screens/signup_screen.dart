import 'package:flutter/material.dart';
import 'package:my_poke_app/Screens/home_screen.dart';
import 'package:my_poke_app/Screens/login_screen.dart';
import 'package:my_poke_app/Widgets/custom_text_form_field.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/PokeAppLogo.png'),
              const SizedBox(
                height: 20
              ),
              CustomTextFormField(
                controller: _nameController, 
                hintText: "Name", 
                obscureText: false, 
                icon: Icons.person,
              ),
              CustomTextFormField(
                controller: _emailController, 
                hintText: "Email", 
                obscureText: false, 
                icon: Icons.email
              ),
              CustomTextFormField(
                controller: _passwordController, 
                hintText: "Password", 
                obscureText: false, 
                icon: Icons.lock
              ),
              InkWell(
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text('Sign Up',
                    style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
                onTap: (){
                  print('Sign Up Button pressed');
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const HomeScreen()));
                },
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  child: const Text('Already a gym trainer? Login'),
                  onTap: (){
                    print('Sign up button pressed');
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}