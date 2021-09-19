import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';

class InputField extends StatefulWidget {
  final String hint;
  final String label;
  final bool scure;

  InputField({
    required this.hint,
    required this.label,
    required this.scure,
  });

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          obscureText: false,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: purple),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: purple),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: widget.label,
            hintText: widget.hint,
            labelStyle: s1,
            hintStyle: s2,
          ),
        ),
      ),
    );
  }
}
