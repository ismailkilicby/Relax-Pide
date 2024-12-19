import 'package:flutter/material.dart';
import 'package:relaxpide/user_service.dart';
import 'package:relaxpide/user_model.dart';

void main() {
  runApp(RegisterPage());
}

final _isimcont = TextEditingController();
final _emailcont = TextEditingController();
final _sifrecont = TextEditingController();
final _telefoncont = TextEditingController();
Users user = new Users(
    namesurname: 'İsmail Kılıç',
    phoneNumber: '05554554545',
    email: 'ismail',
    password: '1234');

class RegisterPage extends StatelessWidget {
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
                  controller: _isimcont,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    filled: true, // Arka planı doldur
                    fillColor: Colors.white60,
                    contentPadding: EdgeInsets.all(0.0),
                    labelText: 'İsim Soyisim',
                    hintText: 'İsim Soyisim',
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
                      Icons.account_circle,
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
                  controller: _telefoncont,
                  cursorColor: Colors.black,
                  keyboardType:
                      TextInputType.phone, // Yalnızca telefon numarası girişi
                  decoration: InputDecoration(
                    filled: true, // Arka planı doldur
                    fillColor: Colors.white60,
                    contentPadding: EdgeInsets.all(0.0),
                    labelText: 'Telefon Numarası',
                    hintText: '5xx xxx xx xx',
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
                      Icons.phone,
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
                    filled: true, // Arka planı doldur
                    fillColor: Colors.white60,
                    contentPadding: EdgeInsets.all(0.0),
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
                  height: 30,
                ),
                MaterialButton(
                  onPressed: () {
                    UserService().createUser(user);
                  },
                  height: 45,
                  color: Colors.black,
                  child: Text(
                    "Kayıt Ol",
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
