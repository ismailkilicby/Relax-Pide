import 'package:flutter/material.dart';
import 'package:relaxpide/Profile.dart';
import 'package:relaxpide/kategoriler.dart';
import 'package:relaxpide/coksatanlar.dart';
import 'package:relaxpide/Sepet.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white, // Tüm sayfanın arkaplan rengi
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              icon: Icon(
                Icons.person,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SepetPage()),
                );
              },
              icon: Icon(
                Icons.shopping_cart,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Buraya anasayfa içeriğinizi ekleyebilirsiniz.
                // Örneğin:
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Öne Çıkan Kategorilerimiz",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Kategoriler(),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "En Çok Satan Ürünlerimiz",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                CokSatan(),
              ],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
