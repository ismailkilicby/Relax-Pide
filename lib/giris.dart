import 'package:flutter/material.dart';
import 'package:relaxpide/SifremiUnuttum.dart';
import 'package:relaxpide/coksatanlar.dart';

void main() {
  runApp(LoginPage());
}

final _emailcont = TextEditingController();
final _sifrecont = TextEditingController();

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFe9ccb8),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 40, right: 20, left: 20),
            child: Column(
              children: [
                TextField(
                  controller: _emailcont,
                  cursorColor: Colors.black,
                  keyboardType:
                      TextInputType.emailAddress, // Mail adresi girişi
                  decoration: InputDecoration(
                    filled: true, // Arka planı doldur
                    fillColor: Colors.white60,
                    contentPadding: EdgeInsets.all(0.0),
                    labelText: 'Email',
                    hintText: 'adres@mail.com',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                      size: 18,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    floatingLabelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _sifrecont,
                  cursorColor: Colors.black,
                  obscureText: true, // Şifrenin gizli olması için
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0.0),
                    filled: true, // Arka planı doldur
                    fillColor: Colors.white60,
                    labelText: 'Şifre',
                    hintText: 'Şifre',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black,
                      size: 18,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFe9ccb8), width: 2),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    floatingLabelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CokSatan()),
                    );
                  },
                  height: 45,
                  color: Colors.black,
                  child: Text(
                    "Giriş Yap",
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SifremiUnuttum()),
                        );
                      },
                      child: Text(
                        'Şifreni mi Unuttun ?',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
