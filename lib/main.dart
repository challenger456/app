import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.pink,
          title: const Text('Multi Child',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.w100)),
          centerTitle: true,
          titleSpacing: 62.0,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Hello World'),
                  Icon(Icons.accessibility_new_sharp),
                  Icon(Icons.account_balance_wallet_rounded),
                ],
              ),
              const SizedBox(height: 15),
              const Text('Vipul',
                  style: TextStyle(
                      fontSize: 43,
                      fontFamily: 'Pacifico',
                      color: Colors.amber,
                    decoration: TextDecoration.underline,
                  )),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: const Center(child: Text('Container 1')),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.lightGreen,
                child: const Center(child: Text('Container 2')),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.brown,
                child: const Center(child:  Text('Container 3')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
