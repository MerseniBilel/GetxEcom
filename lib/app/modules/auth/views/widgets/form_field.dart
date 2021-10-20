import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  final String textLabel;
  final FormFieldSetter<String>? onsaved;
  final String? Function(String?)? validator;
  final String texthint;
  const FormTextField({
    Key? key,
    required this.textLabel,
    required this.texthint,
    required this.onsaved,
    required this.validator,
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
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validator,
          onSaved: onsaved,
          decoration: InputDecoration(hintText: texthint),
        ),
      ],
    );
  }
}
