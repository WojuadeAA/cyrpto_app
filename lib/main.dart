import 'package:crypto_app/core/providers/coin_list_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/providers/coin_list_state.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              ),
              SizedBox(
                height: 20,
              ),
              SearchFieldWidget(),
              SizedBox(
                height: 30,
              ),
              CoinListWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class CoinListWidget extends StatefulWidget {
  const CoinListWidget({
    Key? key,
  }) : super(key: key);

  @override
  _CoinListWidgetState createState() => _CoinListWidgetState();
}

class _CoinListWidgetState extends State<CoinListWidget> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 1)).whenComplete(() {
      context.read(coinListStateNotifierProvider.notifier).getCoinList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final CoinListState coinListState =
            watch(coinListStateNotifierProvider);
        return coinListState.when(
          idle: () => GestureDetector(
            onTap: () {},
            child: Text(
              "get Coins",
              style: TextStyle(color: Colors.white),
            ),
          ),
          loading: () {
            return Center(
              child: Text(
                "Loading coins please wait",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            );
          },
          success: (value) {
            final coinList = value.data;
            return Expanded(
              child: ListView.builder(
                itemCount: coinList.length,
                itemBuilder: (context, index) {
                  final coin = coinList[index];
                  return Container(
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.white,
                          width: 0.2,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF272431)),
                        ),
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Container(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: FittedBox(
                                          child: Text(
                                            "${coin.name}",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        child: Text(
                                          "${coin.symbol}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.grey[800]),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "\$ 51,000.03 ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Flexible(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.waterfall_chart_rounded,
                                            color: Colors.green,
                                            size: 12,
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            "6.08",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.green),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          },
          error: (errorMessage, stackTrace) => Text(errorMessage),
        );

        return child!;
      },
      child: Expanded(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              height: 70,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 0.2,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFF272431)),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            "Bitcoin",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            "BTC",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[800]),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Text(
                            "\$ 51,000.03 ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Flexible(
                          child: Row(
                            children: [
                              Icon(
                                Icons.waterfall_chart_rounded,
                                color: Colors.green,
                                size: 12,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "6.08",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.green),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "   Search...",
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        contentPadding: const EdgeInsets.all(25),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 0),
          child: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(
            right: 20.0,
          ),
          child: Icon(
            CupertinoIcons.slider_horizontal_3,
            color: Colors.white,
          ),
        ),
        prefixIconConstraints: BoxConstraints(
          maxWidth: 40,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
        fillColor: Color(0xFF272431),
        filled: true,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$title",
              style: TextStyle(
                color: Colors.grey,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "$content",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
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
