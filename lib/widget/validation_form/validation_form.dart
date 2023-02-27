import 'package:flutter/material.dart';

class ValidationInputForm extends StatelessWidget {
  const ValidationInputForm({
    Key? key,
    required this.controller,
    required this.errorMsg,
    this.inputType,
    this.hintText,
    this.onChange,
  }) : super(key: key);

  final TextEditingController? controller;
  final TextInputType? inputType;
  final String? hintText;
  final String errorMsg;
  final Function? onChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          keyboardType: inputType,
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey.shade600, fontSize: 16),
          ),
          onChanged: (value) {
            // if (onChange != null) {
            //   onChange!(value);
            // }
          },
        ),
        if (errorMsg.isNotEmpty)
          Text(
            errorMsg,
            style: const TextStyle(color: Colors.pink),
          ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}