import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';

class InputFieldRegist extends StatefulWidget {
  final String hint;
  final String label;
  final bool scure;
  final TextEditingController controller;

  InputFieldRegist(
      {required this.hint,
      required this.label,
      required this.scure,
      required this.controller});

  @override
  _InputFieldRegistState createState() => _InputFieldRegistState();
}

class _InputFieldRegistState extends State<InputFieldRegist> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12.5),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          controller: widget.controller,
          obscureText: widget.scure,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: purple, width: 2.5),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: purple, width: 2.5),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: widget.label,
            hintText: widget.hint,
            labelStyle: labelStyle,
            hintStyle: hintStyle,
          ),
        ),
      ),
    );
  }
}