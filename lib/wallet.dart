import 'package:flutter/material.dart';
import 'package:u_credit_card/u_credit_card.dart';
import 'package:fl_chart/fl_chart.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});
  @override
  State<StatefulWidget> createState() {
    return _WalletPageState();
  }
}

class _WalletPageState extends State {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Wallet",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Icon(Icons.add)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              CreditCardUi(
                cardHolderFullName: "Olivia Urielle",
                cardNumber: "3452178098735240",
                validFrom: "17/02",
                validThru: "29/12",
                currencySymbol: r'$',
                balance: 3000,
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                "Total spending",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          DefaultTabController(
            length: 4,
            child: Container(
                child: TabBar(tabs: [
              Tab(
                text: "Day",
              ),
              Tab(
                text: "Week",
              ),
              Tab(
                text: "Month",
              ),
              Tab(
                text: "Custom range",
              )
            ])),
          )
        ],
      ),
    );
  }
}
