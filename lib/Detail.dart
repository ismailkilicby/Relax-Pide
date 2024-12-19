import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:relaxpide/Sepet.dart';

import 'package:relaxpide/Profile.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: EdgeInsets.only(top: 5),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: ClipOval(
                child: Image.asset(
                  "assets/images/lahmacun.jpg",
                  height: 300,
                  width: 50,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: 550,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFfaf3e8),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 60, bottom: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star_half_outlined,
                            color: Colors.red,
                          ),
                          Text(
                            "4.3",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 250,
                          ),
                          Text(
                            "55 TL",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Adet Lahmacun",
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 90,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  CupertinoIcons.minus,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  CupertinoIcons.plus,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Text(
                        "Lahmacun, Haydari, Acılı Ezme ve Mevsim Salata ile Servis Edilir. Afiyet Olsun.",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tahmini Varış Zamanı:",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Icon(
                                  CupertinoIcons.clock_fill,
                                  color: Colors.red,
                                ),
                              ),
                              Text(
                                "45 Dakika",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
