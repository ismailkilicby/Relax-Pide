import 'package:flutter/material.dart';
import 'package:relaxpide/Detail.dart';
import 'package:relaxpide/Sepet.dart';

class CokSatan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.60,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Container(
          width: 300,
          height: 300,
          padding: EdgeInsets.only(left: 15, right: 15, top: 5),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xFFfaf3e8),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.8),
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
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
                    height: 150,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 3, top: 15),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Adet Lahmacun",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Lahmacun, Haydari, Acılı Ezme ve Salata ile",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "75 TL",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 25,
                        decoration: TextDecoration.lineThrough,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Text(
                      "55 TL",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 14, 149, 50),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SepetPage()),
                                );
                              },
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                          TextSpan(
                              text: " Sepete ekle",
                              style: TextStyle(fontSize: 25)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 25, top: 5),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xFFfaf3e8),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.8),
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
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
                    "assets/images/Adana-Kebap.png",
                    height: 150,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 3),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Porsiyon Adana Kebap",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Bulgur Pilavı, Salata, Haydari ve Lavaş ile",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "155 TL",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 25,
                        decoration: TextDecoration.lineThrough,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Text(
                      "95 TL",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 14, 149, 50),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SepetPage()),
                                );
                              },
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                          TextSpan(
                              text: " Sepete ekle",
                              style: TextStyle(fontSize: 25)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 300,
          height: 300,
          constraints: BoxConstraints(maxHeight: 100),
          padding: EdgeInsets.only(left: 15, right: 15, top: 5),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xFFfaf3e8),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.8),
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
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
                    "assets/images/Urfa-Kebap.jpg",
                    height: 150,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 3),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Porsiyon Urfa Kebap",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Bulgur Pilavı, Salata, Közlenmiş Biber, Haydari ve Lavaş ile",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "195 TL",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 25,
                        decoration: TextDecoration.lineThrough,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Text(
                      "135 TL",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 14, 149, 50),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SepetPage()),
                                );
                              },
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                          TextSpan(
                              text: " Sepete ekle",
                              style: TextStyle(fontSize: 25)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 300,
          height: 300,
          padding: EdgeInsets.only(left: 15, right: 15, top: 5),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xFFfaf3e8),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.8),
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
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
                    "assets/images/kıymalı-pide2.jpg",
                    height: 150,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 3),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Yaprak Kıymalı Pide",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Salata ve Haydari il birlikte ziyafetin tadını çıkarın",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "75 TL",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 25,
                        decoration: TextDecoration.lineThrough,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Text(
                      "35 TL",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 14, 149, 50),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SepetPage()),
                                );
                              },
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                          TextSpan(
                              text: " Sepete ekle",
                              style: TextStyle(fontSize: 25)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
