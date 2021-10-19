import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  final String textLabel;
  final Function onsaved;
  final String texthint;
  const FormTextField({
    Key? key,
    required this.textLabel,
    required this.texthint,
    required this.onsaved,
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
          decoration: InputDecoration(hintText: texthint),
        ),
      ],
    );
  }
}
