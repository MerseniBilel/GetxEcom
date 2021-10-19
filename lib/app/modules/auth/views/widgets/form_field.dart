import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  final String textLabel;
  final Function onsaved;
  final String? Function(String?)? validator;
  final String texthint;
  final TextEditingController controller;
  const FormTextField({
    Key? key,
    required this.textLabel,
    required this.texthint,
    required this.onsaved,
    required this.validator,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textLabel,
          style:
              const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        TextFormField(
          controller: controller,
          validator: validator,
          decoration: InputDecoration(hintText: texthint),
        ),
      ],
    );
  }
}
