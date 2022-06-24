import 'package:flutter/material.dart';
import 'package:mitesh11count/counter_provider.dart';
import 'package:provider/provider.dart';

class OtherPage extends StatefulWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  State<OtherPage> createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Other Page"),
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<CounterProvider>(
                builder: (Context, counterprovider, _) => Text(
                  "${counterprovider.counter}",
                  style: TextStyle(fontSize: 60),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
