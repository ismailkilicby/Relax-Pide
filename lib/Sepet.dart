import 'package:flutter/material.dart';
import 'package:relaxpide/main.dart';

void main() {
  runApp(SepetPage());
}

class SepetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Image(
            image: AssetImage('assets/images/logo.png'),
            width: 80,
            height: 80,
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                // Eğer aynı sayfaya gitmek istiyorsanız bu kısmı değiştirebilirsiniz.
                // Örneğin, Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage()));
              },
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {
                // IconButton'a basıldığında yapılacak işlem
              },
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                height: 561,
                decoration: BoxDecoration(
                  color: Color(0xFFfaf3e8),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, left: 20, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      YaziWidget('Email', 'admin@mail.com'),
                      YaziWidget('İsim Soyisim', 'Mustafa Fatih YILDIZ'),
                      YaziWidget('Telefon Numarası', '+90 555 555 55 55'),
                      SizedBox(height: 50),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.lock),
                          label: Text(
                            'Şifre Değiştir',
                            style: TextStyle(fontSize: 14),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green, // Buton rengi
                            onPrimary: Colors.white, // Yazı rengi
                            minimumSize: Size(100, 45), // Buton boyutu
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.edit_note_rounded),
                          label: Text(
                            'Bilgileri Güncelle',
                            style: TextStyle(fontSize: 16),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange, // Buton rengi
                            onPrimary: Colors.white, // Yazı rengi
                            minimumSize: Size(200, 40), // Buton boyutu
                          ),
                        ),
                      ),
                      SizedBox(height: 70),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                        },
                        icon: Icon(Icons.logout_outlined),
                        label: Text(
                          'Çıkış Yap',
                          style: TextStyle(fontSize: 16),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red, // Buton rengi
                          onPrimary: Colors.white, // Yazı rengi
                          minimumSize: Size(200, 40), // Buton boyutu
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget YaziWidget(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
