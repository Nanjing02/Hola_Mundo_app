import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  //final 
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        centerTitle: true,
      ),
        body : Center (
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
            Text('$clickCounter', style: const TextStyle(fontSize: 140,fontWeight: FontWeight.w100)),
             Text('Click${clickCounter == 1 ? '' : 's'}', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w400))
            
            ],
            )
          ),
          floatingActionButton: FloatingActionButton( 
            onPressed: () {

              setState(() {
              clickCounter=clickCounter + 1;  
              });

            },
            child:Icon(Icons.plus_one),  ),
      );//const Placeholder();
  }
}