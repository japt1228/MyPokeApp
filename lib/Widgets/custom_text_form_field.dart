import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  const CustomTextFormField({
    Key? key, 
    required this.controller, 
    required this.hintText, 
    required this.obscureText,
    required this.icon,   
  }) : super(key: key) ;

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextFormField(
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyLarge,
          prefixIcon: const Icon(
            Icons.email, 
            color: Colors.amber,
          ),
          //suffixIcon: ,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.amber,
              width: 3
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 3
            ),
          ),
        ),
      ),
    );
  }
}
