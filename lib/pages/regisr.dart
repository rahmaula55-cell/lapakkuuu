import 'package:flutter/material.dart';
import 'package:lapakkuuu/pages/loginr.dart';
import 'package:lapakkuuu/pages/menupager.dart';

class Regisr extends StatefulWidget {
  const Regisr({super.key});

  @override
  State<Regisr> createState() => _LovelyRegisterScreenState();
}

class _LovelyRegisterScreenState extends State<Regisr> {
  TextEditingController _nama = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();
  bool showDafPW = true;
  bool showDafCPW = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.purple.shade700),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset("assets/image/lapakku.jpeg"),
                SizedBox(height: 50),
                TextField(
                  controller: _nama,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Tulis nama anda',
                    label: Text('Name', style: TextStyle(color: Colors.black)),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _password,
                  keyboardType: TextInputType.text,
                  obscureText: showDafPW,
                  decoration: InputDecoration(
                    suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          showDafPW = !showDafPW;
                        });
                      },
                      icon: Icon(
                        showDafPW
                            ? Icons.remove_red_eye_outlined
                            : Icons.remove_red_eye,
                      ),
                    ),
                    hintText: 'Tulis Password',
                    label: Text(
                      'Password',
                      style: TextStyle(color: Colors.black),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _confirmPassword,
                  keyboardType: TextInputType.text,
                  obscureText: showDafCPW,
                  decoration: InputDecoration(
                    suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          showDafCPW = !showDafCPW;
                        });
                      },
                      icon: Icon(
                        showDafCPW
                            ? Icons.remove_red_eye
                            : Icons.remove_red_eye_outlined,
                      ),
                    ),
                    hintText: 'Confirmasi Password Anda',
                    label: Text(
                      'confirmasi Password',
                      style: TextStyle(color: Colors.black),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  value: showDafCPW,
                  onChanged: (value) {
                    setState(() {
                      showDafCPW = !showDafPW;
                    });
                  },
                ),
                Text('Ingat Aku', style: TextStyle(color: Colors.black87)),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_nama.value.text == "rahmafu" &&
                    _password.value.text == "1sampai8" &&
                    _confirmPassword.value.text == "1sampai8") {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("sukses"),
                      content: Text("Selamat Datang "),
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
                child: Text("Register"),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Loginr()),
              ),
              child: Text('Batal!', style: TextStyle(color: Colors.red)),
            ),
          ],
        ),
      ),
    );
  }
}