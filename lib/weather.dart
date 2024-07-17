import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class design extends StatelessWidget {
  const design({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 230, 237, 96),
        centerTitle: true,
        title: Text('WEATHERAPP'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.cloud_done),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 54, 133, 125),
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            child: Image.network(
                fit: BoxFit.cover,
                "https://images.unsplash.com/photo-1579003593419-98f949b9398f?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8d2VhdGhlcnxlbnwwfHwwfHx8MA%3D%3D"),
          ),
          Center(
            child: Column(
              children: [
                Text(
                    style: TextStyle(
                        fontFamily: AutofillHints.birthday,
                        fontWeight: FontWeight.bold,
                        fontSize: 45,
                        color: Colors.white),
                    "KARACHI"),
                SizedBox(
                  height: 40,
                ),
                Text(
                    style: TextStyle(
                        fontFamily: AutofillHints.countryCode,
                        fontSize: 20,
                        color: Colors.yellow),
                    "MONDAY 7:30 PM"),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey,
                  ),
                  child: LottieBuilder.network(
                      height: 50,
                      "https://lottie.host/0a76d3b8-fddd-47f0-9086-acb9826f8cff/kn2Y95kFR5.json"),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                    style: TextStyle(
                        fontFamily: AutofillHints.birthday,
                        fontSize: 100,
                        color: Colors.yellow),
                    "20\u2103"),
                SizedBox(
                  height: 60,
                ),
                Text(
                    style: TextStyle(
                        fontFamily: AutofillHints.birthday,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    "GOOD NIGHT"),
                Text(
                    style: TextStyle(
                        fontFamily: AutofillHints.birthday,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    "NAZIYA")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
