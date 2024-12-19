import 'package:flutter/material.dart';
import 'package:relaxpide/giris.dart';
import 'package:relaxpide/kayit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/images/logo.png'),
                  width: 200,
                  height: 200,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: 335,
              margin: EdgeInsets.only(bottom: 40),
              decoration: BoxDecoration(
                color: Color(0xFFe9ccb8),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
              ),
              child: Column(
                children: [
                  TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.black,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                          child: Text(
                        "Giriş Yap",
                        style: TextStyle(fontSize: 18),
                      )),
                      Tab(
                          child: Text(
                        "Hesap Oluştur",
                        style: TextStyle(fontSize: 18),
                      )),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        LoginPage(),
                        RegisterPage(),
                      ],
                    ),
                  ),
                ],
              ),
              padding: EdgeInsets.only(top: 20),
            ),
          ),
        ],
      ),
    );
  }
}
