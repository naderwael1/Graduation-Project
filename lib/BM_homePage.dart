import 'package:flutter/material.dart';
import 'package:operation_panal/normalViewBody.dart';
import 'customDrawer.dart';
class BmHomePage extends StatefulWidget {
  const BmHomePage({Key? key}) : super(key: key);

  @override
  State<BmHomePage> createState() => _BmHomePageState();
}

class _BmHomePageState extends State<BmHomePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xffdbdbdb),
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: Text('BM Home Page'),
        backgroundColor: Color(0x85554a4B),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
          ),
        ],
      ),
      body: const NormalView(),
    );
  }
}


