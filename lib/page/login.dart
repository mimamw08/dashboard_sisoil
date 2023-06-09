import 'package:dashboard_sisoil/page/dash_board_screen.dart';
import 'package:dashboard_sisoil/page/home.dart';
import 'package:dashboard_sisoil/page/regis.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login_page extends StatefulWidget {
  login_page({Key? key}) : super(key: key);

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  late bool _passwordVisible;
  bool loggedIn = false;
  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 500,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'LOGIN',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 400,
                      width: 350,
                      // decoration: BoxDecoration(
                      //     border: Border.all(color: Colors.black)),
                      child: Form(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          key: _formKey,
                          child: Column(
                            children: <Widget>[
                              //Email Textfield
                              TextFormField(
                                controller: _emailController,
                                obscureText: false,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 196, 196, 196),
                                            width: 2),
                                        borderRadius: BorderRadius.circular(5)),
                                    prefixIcon: Icon(Icons.email_outlined),
                                    fillColor: Colors.white,
                                    //filled: true,
                                    labelText: 'Email',
                                    hintText: 'Email'),
                                keyboardType: TextInputType.emailAddress,
                                validator: (email) => email != null &&
                                        !EmailValidator.validate(email)
                                    ? 'Masukkan Email'
                                    : null,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              //Password Textfield
                              TextFormField(
                                obscureText: !_passwordVisible,
                                controller: _passController,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 196, 196, 196),
                                            width: 2),
                                        borderRadius: BorderRadius.circular(5)),
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        if (mounted)
                                          setState(() {
                                            _passwordVisible = true;
                                          });
                                      },
                                      onDoubleTap: () {
                                        if (mounted)
                                          setState(() {
                                            _passwordVisible = false;
                                          });
                                      },
                                      child: Icon(_passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                    ),
                                    prefixIcon: Icon(Icons.lock),
                                    fillColor: Colors.white,
                                    //filled: true,
                                    labelText: 'Password',
                                    hintText: 'Password'),
                                validator: (PassCurrentValue) {
                                  RegExp regex = RegExp(
                                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                                  var passNonNullValue = PassCurrentValue ?? "";
                                  if (passNonNullValue.isEmpty) {
                                    return ('Masukkan Passoword');
                                  } else if (passNonNullValue.length < 7) {
                                    return ('Password harus mempunyai 8 karakter');
                                  } else if (!regex
                                      .hasMatch(passNonNullValue)) {
                                    return ('Gunakan upper,lower,digit dan karakter spesial');
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: RichText(
                                          text: TextSpan(
                                              text: 'Lupa Password?',
                                              style: GoogleFonts.roboto(
                                                  color: Colors.green,
                                                  fontSize: 14,
                                                  fontStyle: FontStyle.italic,
                                                  fontWeight:
                                                      FontWeight.w700))),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 45,
                                width: 350,
                                child: ElevatedButton(
                                  onPressed: () {
                                    _submit();
                                  },
                                  child: const Text('Masuk'),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.green,
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white)),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 45,
                                  width: 350,
                                  decoration:
                                      BoxDecoration(color: Color(0xffCFF2DB)),
                                  child: Center(
                                      child: Row(
                                    children: [
                                      SizedBox(
                                        width: 36,
                                      ),
                                      Icon(Icons.phone_android),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Masuk dengan nomor HP',
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  )),
                                ),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 90,
                                  ),
                                  RichText(
                                      text: TextSpan(
                                          text: 'Belum punya akun? ',
                                          style: GoogleFonts.roboto(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.w700))),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  regis_page()));
                                    },
                                    child: RichText(
                                        text: TextSpan(
                                            text: 'Daftar',
                                            style: GoogleFonts.roboto(
                                                color: Colors.green,
                                                fontSize: 14,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w700))),
                                  )
                                ],
                              ),
                            ],
                          )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      try {
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: _emailController.text.trim(),
                password: _passController.text.trim());

        if (credential.user!.emailVerified) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => home()));
        } else {
          Fluttertoast.showToast(msg: 'Perlu Verifikasi email terlebih dahulu');
        }
        Fluttertoast.showToast(msg: "Berhasil Login");
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          Fluttertoast.showToast(msg: 'Email belum terdaftar');
        } else if (e.code == 'wrong-password') {
          Fluttertoast.showToast(msg: 'Password salah');
        }
      }
    }
  }
}
