import 'package:flutter/material.dart';

class GlobalTextField extends StatefulWidget {
    final String? text;
  final Icon? icon;
  const GlobalTextField({super.key,this.text,this.icon});

  @override
  State<GlobalTextField> createState() => _GlobalTextFieldState();
}

class _GlobalTextFieldState extends State<GlobalTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: widget.text,
          suffixIcon: widget.icon,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 4),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
    );
  }
}