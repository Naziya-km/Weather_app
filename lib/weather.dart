import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:http/http.dart' as http;

class design extends StatefulWidget {
  const design({super.key});

  @override
  State<design> createState() => _designState();
}

class _designState extends State<design> {
  @override
  void initState() {
    getweather();
    // TODO: implement initState
    super.initState();
  }

  var weather;

  void getweather() async {
    String url =
        ("http://api.weatherapi.com/v1/current.json?key=6405a9820def485f80755634241807&q=kochi");
    var res = await http.get(Uri.parse(url));
    var data = jsonDecode(res.body);
    print(data);
    setState(() {
      weather = data;
    });
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(172, 178, 53, 1),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.cloud),
            ),
            Text(
                style: TextStyle(
                    fontFamily: AutofillHints.birthday,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
                'WEATHERAPP'),
          ],
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
            decoration: BoxDecoration(),
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
                  weather["location"]["name"],
                  style: TextStyle(
                      fontFamily: AutofillHints.birthday,
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  weather["location"]["localtime"].toString(),
                  style: TextStyle(
                      fontFamily: AutofillHints.countryCode,
                      fontSize: 20,
                      color: Colors.yellow),
                ),
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
                  weather["current"]["temp_c"].toString(),
                  style: TextStyle(
                      fontFamily: AutofillHints.birthday,
                      fontSize: 100,
                      color: Colors.yellow),
                ),
                Text(
                  weather["current"]["condition"]["text"],
                  style: TextStyle(
                      fontFamily: AutofillHints.birthday,
                      fontSize: 15,
                      color: Colors.white),
                ),
                Text(
                  weather["current"]["condition"]["code"].toString(),
                  style: TextStyle(
                      fontFamily: AutofillHints.birthday,
                      fontSize: 15,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.all(20)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.sunny_snowing),
                          color: Colors.white,
                        ),
                        Text(
                            style: TextStyle(
                                fontFamily: AutofillHints.birthday,
                                color: Colors.white),
                            "sunrise"),
                        Text(
                            style: TextStyle(
                                fontFamily: AutofillHints.birthday,
                                color: Colors.white),
                            "7:00"),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.wind_power),
                              color: Colors.white,
                            ),
                            Text(
                              weather["current"]["condition"]["wind_mph"]
                                  .toString(),
                              style: TextStyle(
                                  fontFamily: AutofillHints.birthday,
                                  color: Colors.white),
                            ),
                            Text(
                                style: TextStyle(
                                    fontFamily: AutofillHints.birthday,
                                    color: Colors.white),
                                "4m/s "),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thermostat),
                          color: Colors.white,
                        ),
                        Text(
                          weather["current"]["temp_f"].toString(),
                          style: TextStyle(
                              fontFamily: AutofillHints.birthday,
                              color: Colors.white),
                        ),
                        Text(
                            style: TextStyle(
                                fontFamily: AutofillHints.birthday,
                                color: Colors.white),
                            "23\u2103")
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
