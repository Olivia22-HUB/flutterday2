import 'package:flutter/material.dart';

class AcceuilPage extends StatefulWidget {
  const AcceuilPage({super.key});
  @override
  State<StatefulWidget> createState() {
    return _AcceuilPageState();
  }
}

class _AcceuilPageState extends State {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/image4.jpg"),
                  ),
                  Text(
                    "Hello Olivia!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            margin: EdgeInsets.all(20),
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.blueAccent,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Olivia Account",
                      style: TextStyle(fontSize: 14, color: Colors.white60),
                    ),
                    Text(
                      "Arian zesan",
                      style: TextStyle(fontSize: 14, color: Colors.white60),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Center(
                      child: Text(
                        "\$10000.00",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Total Balance",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Added card:05",
                      style: TextStyle(fontSize: 14, color: Colors.white60),
                    ),
                    Text(
                      "Ac.no.2234521",
                      style: TextStyle(fontSize: 14, color: Colors.white60),
                    )
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Features",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See more",
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 193, 197, 201),
                      foregroundColor: Colors.black),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset("assets/images/money-send.png"),
                      Text(
                        "Send",
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                    ],
                  )),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 193, 197, 201),
                    foregroundColor: Colors.black),
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset("assets/images/money-recive.png"),
                    Text(
                      "Receive",
                      style: TextStyle(fontSize: 10, color: Colors.black),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 193, 197, 201),
                    foregroundColor: Colors.black),
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset("assets/images/awards.png"),
                    Text(
                      "Rewards",
                      style: TextStyle(fontSize: 10, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recently activity",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("Miradie"),
                    subtitle: Text("20 jan 2025"),
                    trailing: Column(
                      children: [Text("+\$1000.00"), Text("22h14")],
                    ),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/image5.jpg"),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
