import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class GiftPage extends StatefulWidget {
  const GiftPage({super.key});
  @override
  State<StatefulWidget> createState() {
    return _GiftPageState();
  }
}

class _GiftPageState extends State {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(30, 80, 20, 0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Send Money",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Select card",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 236, 234, 234),
                  borderRadius: BorderRadius.all(Radius.circular(7))),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Physical elb card",
                    style: TextStyle(fontSize: 10),
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 236, 234, 234),
                  borderRadius: BorderRadius.all(Radius.circular(7))),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Virtual ebl card",
                    style: TextStyle(fontSize: 10),
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 236, 234, 234),
                  borderRadius: BorderRadius.all(Radius.circular(7))),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Ebl card",
                    style: TextStyle(fontSize: 10),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Choose recipient",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Tape name/card/email/phone number",
                  suffixIcon: Image.asset("assets/images/securityicon.png"),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
            Row(
              children: [
                ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Image.asset("assets/images/image4.jpg");
                    })
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text(
                  "Amount", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(height: 10,),
             LineChart(
  LineChartData(
    // read about it in the LineChartData section
   // ),
   //swapAnimationDuration: Duration(milliseconds: 150), // Optional
   // swapAnimationCurve: Curves.linear, // Optional
  )
  )
          ],
        )
      ]),
    );
  }
}
