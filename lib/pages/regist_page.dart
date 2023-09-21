import 'package:fe_dmoniac/components/textfields/name_textfield.dart';
import 'package:fe_dmoniac/components/textfields/number_textfield.dart';
import 'package:fe_dmoniac/components/textfields/password_textfield.dart';
import 'package:fe_dmoniac/components/textfields/date_textfield.dart';
import 'package:fe_dmoniac/components/textfields/select1_textfield.dart';
import 'package:fe_dmoniac/components/textfields/select2_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class RegistPage extends StatefulWidget{
  @override
  _RegistPageState createState() => _RegistPageState();
}

class _RegistPageState extends State<RegistPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}

class BottomNavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      child: GNav(
        color: Colors.grey,
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Log In',
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          GButton(
            icon: Icons.home,
            text: 'Sign Up',
             textStyle: TextStyle(
              fontWeight: FontWeight.bold,
             ),
          ),
        ],
      ),
    );
  }
}

class LoginPage extends StatelessWidget{
  final phonenumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
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

          ],
        ),
      ),
    );
  }
}

class SignupPage extends StatelessWidget{
  final fullnameController = TextEditingController();
  final nicknameController = TextEditingController();
  final biomotherController = TextEditingController();
  final phonenumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
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
            
            //kewarganegaraan
            Select2Field(
              hintText: 'Kewarganegaraan',
            ),
            const SizedBox(height: 25),

            //nama ibu kandung
            NameField(
              controller: biomotherController, 
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

          ],
        ),
      ),
    );
  }
}