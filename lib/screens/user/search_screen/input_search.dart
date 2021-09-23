import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';

class InputSearch extends StatefulWidget {
  final String hint;
  final String label;
  final TextEditingController controller;

  InputSearch(
      {required this.hint,
        required this.label,
        required this.controller});

  @override
  _InputSearchState createState() => _InputSearchState();
}

class _InputSearchState extends State<InputSearch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12.5),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          controller: widget.controller,
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
            // prefixIcon: Ico
          ),
        ),
      ),
    );
  }
}
