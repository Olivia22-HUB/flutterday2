import 'package:declicpay/acceuil.dart';
import 'package:flutter/material.dart';
import 'package:declicpay/wallet.dart';
import 'package:declicpay/git.dart';
import 'package:declicpay/profile.dart';

void main() {
  runApp(DeclicPay());
}

class DeclicPay extends StatefulWidget {
  const DeclicPay({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DeclicPayState();
  }
}

class _DeclicPayState extends State {
  final pages = [AcceuilPage(), WalletPage(), GiftPage(), ProfilePage()];

  int indexInitialPage = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pages[indexInitialPage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexInitialPage,
          onTap: (value) {
            setState(() {
              indexInitialPage = value;
            });
          },
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.wallet),label: "",),
            BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
        ),
      ),
    );
  }
}
