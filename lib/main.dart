
import 'package:flutter/material.dart';
import 'package:mitesh11count/counter_provider.dart';
import 'package:mitesh11count/otherpage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<CounterProvider>(
      create: (BuildContext,Context)=>CounterProvider(),
      builder: (context,_)=>MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context)=>Homepage(),
          '/other_page':(context)=>OtherPage(),
        },
      ),
    ),
  );
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Consumer<CounterProvider>(builder: (context, counterprovider, _) =>
              Text("${counterprovider.counter}",style: TextStyle(fontSize: 60),
              ),
          ),
         Row(
           children: [
             ElevatedButton.icon(
    label:const  Text("Increment"),
    icon: const Icon(Icons.add),
    onPressed:(){
      Provider.of<CounterProvider>(context,listen: false).increment();
    }
    ),
             ElevatedButton.icon(
    label:const  Text("decrement"),
    icon: const Icon(Icons.remove),
    onPressed:(){
      Provider.of<CounterProvider>(context,listen: false).increment();
    }
    ),
           ],
         ),
        ],
      ),
    ),
    ),
    );
  }
}
