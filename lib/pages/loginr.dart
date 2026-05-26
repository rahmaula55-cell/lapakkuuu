import 'package:flutter/material.dart';
import 'package:lapakkuuu/pages/menupager.dart';
import 'package:lapakkuuu/pages/regisr.dart';

class Loginr extends StatefulWidget {
  const Loginr({super.key});

  @override
  State<Loginr> createState() => _LoginPageState();
}

class _LoginPageState extends State<Loginr> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _isObscure = true;
  IconData _isObscureIcon = Icons.remove_red_eye;
  bool _rememberMe = true;

  void isObscure() {
    setState(() {
      if (_isObscure) {
        _isObscure = false;
        _isObscureIcon = Icons.remove_red_eye;
      } else {
        _isObscure = true;
        _isObscureIcon = Icons.remove_red_eye_outlined;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(size.width / 180),
        decoration: BoxDecoration(color: Colors.white),
        child: Container(
          width: size.width,
          height: size.width,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.purple.shade700.withValues(alpha: 0.6),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                offset: Offset(1.5, 1.5),
                color: Colors.purple.shade700.withValues(alpha: 50),
                blurRadius: 0,
                spreadRadius: 110,
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 100),
                Text(
                  "LAPAKKU",
                  style: TextStyle(
                    color: Colors.purple.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 70,
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  controller: _username,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "unsername",
                    alignLabelWithHint: true,
                    focusColor: Colors.blueAccent,
                    fillColor: Colors.white,
                    filled: true,
                    icon: Icon(Icons.person, color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _password,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "password",
                    alignLabelWithHint: true,
                    focusColor: Colors.blueAccent,
                    fillColor: Colors.white,
                    filled: true,
                    icon: Icon(Icons.remove_red_eye, color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Checkbox(
                      value: _rememberMe,
                      onChanged: (value) {
                        setState(() {
                          _rememberMe = !_rememberMe;
                        });
                      },
                    ),
                    SizedBox(height: 10),
                    Text("Ingat Aku", style: TextStyle(color: Colors.white)),
                  ],
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    if (_username.value.text == "rahma" &&
                        _password.value.text == "1sampai8") {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text("sukses"),
                          content: Text(
                            "Selamat Datang ${_username.text.toString()}",
                          ),
                        ),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text("Gagal"),
                          content: Text("Silahkan Coba lagi!!"),
                        ),
                      );
                    }
                  },
                  child: TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Menupager()),
                    ),
                    child: Text("Login"),
                  ),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Regisr()),
                  ),
                  child: Text(
                    " Belum punya akun?Daftar",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
