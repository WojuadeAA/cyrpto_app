import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1d1b27),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xFF424244),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Live Prices",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.notification_add_rounded,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StatsWidget(
                    rate: "8.0%",
                    title: "Market Cap",
                    content: "\$1.6B",
                  ),
                  StatsWidget(
                    rate: "8.0%",
                    title: "Market Cap",
                    content: "\$1.6B",
                  ),
                  StatsWidget(
                    rate: "8.0%",
                    title: "Market Cap",
                    content: "\$1.6B",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class StatsWidget extends StatelessWidget {
  const StatsWidget({
    Key? key,
    required this.content,
    required this.rate,
    required this.title,
  }) : super(key: key);

  final String title;
  final String content;
  final String rate;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("$title",
              style: TextStyle(
                color: Colors.grey,
              )),
          Text(
            "$content",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w800),
          ),
          Text(
            "$rate",
            style: TextStyle(color: Colors.greenAccent),
          )
        ],
      ),
    );
  }
}
