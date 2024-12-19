import 'package:flutter/material.dart';
import 'package:relaxpide/Profile.dart';
import 'package:relaxpide/Sepet.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: AppBar(
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
    );
  }
}
