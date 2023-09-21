import 'package:flutter/material.dart';
import 'package:fe_dmoniac/components/textfields/name_textfield.dart';
import 'package:fe_dmoniac/components/textfields/password_textfield.dart';
import 'package:fe_dmoniac/components/textfields/number_textfield.dart';
import 'package:fe_dmoniac/components/textfields/date_textfield.dart';
import 'package:fe_dmoniac/components/textfields/select1_textfield.dart';
import 'package:fe_dmoniac/components/textfields/select2_textfield.dart';

class EditPage extends StatefulWidget {
  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final fullnameController = TextEditingController();
  final nicknameController = TextEditingController();
  final biologicalmotherController = TextEditingController();
  final phonenumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(children: [
            const SizedBox(height: 25),

            //nama lengkap
            NameField(
              controller: fullnameController,
              hintText: 'Nama Lengkap',
            ),
            const SizedBox(height: 25),

            //nama panggilan
            NameField(
              controller: nicknameController,
              hintText: 'Nama Panggilan',
            ),
            const SizedBox(height: 25),

            //jenis kelamin
            Select1Field(
              hintText: 'Jenis Kelamin',
            ),
            const SizedBox(height: 25),

            //tanggal lahir
            DateField(
              hintText: 'Tanggal Lahir',
            ),
            const SizedBox(height: 25),

            //kewarganegaraan
            Select2Field(
              hintText: 'Kewarganegaraan',
            ),
            const SizedBox(height: 25),

            //nama ibu kandung
            NameField(
              controller: biologicalmotherController,
              hintText: 'Nama Ibu Kandung',
            ),
            const SizedBox(height: 25),

            //nomor telepon
            NumberField(
              controller: phonenumberController,
            ),
            const SizedBox(height: 25),

            //kata sandi
            PasswordField(
              hintText: 'Kata Sandi',
            ),
            const SizedBox(height: 25),

            const SizedBox(height: 25),
          ]),
        ),
      ),
    );
  }
}
