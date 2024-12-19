import 'package:flutter/material.dart';
import 'package:relaxpide/lahmacun.dart';
import 'package:relaxpide/pide.dart';
import 'package:relaxpide/kebapIzgara.dart';

class Kategoriler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => LahmacunlarSayfasi()),
              );
            },
            child: buildContainer('assets/images/lahmacun-yeni-one-cikan.png'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => PidelerSayfasi()),
              );
            },
            child: buildContainer('assets/images/kıymalı-pide.jpg'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => KebapVeIzgaralarSayfasi()),
              );
            },
            child: buildContainer('assets/images/kebap-ızgara.png'),
          ),
        ],
      ),
    );
  }

  Container buildContainer(String imagePath) {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 10, left: 15),
      padding: EdgeInsets.all(10),
      height: 110,
      width: 110,
      decoration: BoxDecoration(
        color: Color(0xFFe9ccb8),
        shape: BoxShape.circle, // Şekli daire olarak ayarla
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 3,
            spreadRadius: 1,
          ),
        ],
      ),
      child: ClipOval(
        child: Image.asset(
          imagePath,
          height: 100,
          width: 100,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
