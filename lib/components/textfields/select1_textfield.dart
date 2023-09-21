import 'package:flutter/material.dart';

class Select1Field extends StatefulWidget {
  final String hintText;

  const Select1Field({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  _Select1FieldState createState() => _Select1FieldState();
}

class _Select1FieldState extends State<Select1Field> {
  String? selectedGender;

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
        value: selectedGender,
        onChanged: (newValue) {
          setState(() {
            selectedGender = newValue;
          });
        },
        items: <String>['Laki-laki', 'Perempuan'].map<DropdownMenuItem<String>>(
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