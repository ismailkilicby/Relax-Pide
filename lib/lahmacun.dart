import 'package:flutter/material.dart';
import 'package:relaxpide/Detail.dart';
import 'package:relaxpide/Profile.dart';
import 'package:relaxpide/Sepet.dart';

void main() {
  runApp(LahmacunlarSayfasi());
}

class LahmacunlarSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: GridView.count(
          crossAxisCount: 1,
          childAspectRatio: 1.7,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFfaf3e8),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.8),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailPage()), // Adana Kebap detay sayfasına yönlendir
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.all(0),
                      child: Image.asset(
                        "assets/images/lahmacun.jpg",
                        height: 130,
                        width: 130,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Adet Lahmacun",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Lahmacun, Haydari, Acılı Ezme ve Mevsim Salata ile",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "55 TL",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFfaf3e8),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.8),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailPage()), // Adana Kebap detay sayfasına yönlendir
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.all(0),
                      child: Image.asset(
                        "assets/images/antep-lahmacun.jpg",
                        height: 130,
                        width: 130,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Adet Antep Lahmacun",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Antep Lahmacun, Haydari, Acılı Ezme ve Mevsim Salata ile",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "60 TL",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFfaf3e8),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.8),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailPage()), // Adana Kebap detay sayfasına yönlendir
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.all(0),
                      child: Image.asset(
                        "assets/images/urfa-lahmacun.jpg",
                        height: 130,
                        width: 130,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Adet Urfa Lahmacun",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Urfa Lahmacun, Haydari, Acılı Ezme ve Mevsim Salata ile",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "60 TL",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
