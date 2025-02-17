//import 'package:flutter/foundation.dart';
import 'package:declicpay/acceuil.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_credit_card/flutter_credit_card.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DeclicPay(),
  ));
}

class DeclicPay extends StatefulWidget {
  const DeclicPay({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DeclicPayState();
  }
}

class _DeclicPayState extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundImage: AssetImage("assets/images/image4.jpg"),
        ),
        title: Text("Hello Olivia!"),
        actions: [Icon(Icons.search)],
        backgroundColor: Colors.blueAccent,
      ),

      body: AcceuilPage(),

      
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home)),
        BottomNavigationBarItem(icon: Icon(Icons.wallet)),
        BottomNavigationBarItem(icon: Icon(Icons.card_giftcard)),
        BottomNavigationBarItem(icon: Icon(Icons.person))
      ]),
    ));
  }
}
