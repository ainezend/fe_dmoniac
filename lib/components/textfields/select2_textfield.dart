import 'package:flutter/material.dart';

class Select2Field extends StatefulWidget {
  final String hintText;

  const Select2Field({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  _Select2FieldState createState() => _Select2FieldState();
}

class _Select2FieldState extends State<Select2Field> {
  String? selectedNationality;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          fillColor: Colors.grey.shade400,
          filled: true,
        ),
        value: selectedNationality,
        onChanged: (newValue) {
          setState(() {
            selectedNationality = newValue;
          });
        },
        items: <String>['WNI', 'WNA'].map<DropdownMenuItem<String>>(
          (String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          },
        ).toList(),
        hint: Text(widget.hintText),
      ),
    );
  }
}