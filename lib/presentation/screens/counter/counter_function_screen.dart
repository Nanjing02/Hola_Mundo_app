import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  //final 
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {

int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Function'),
        actions: [
          IconButton(
          onPressed: (){
            setState(() {
              clickCounter=0;
            });
          }, 
          icon: const Icon(Icons.refresh_rounded), 
          )
        ],

        centerTitle: true,
      ),
        body : Center (
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
            Text('$clickCounter', style: const TextStyle(fontSize: 140,fontWeight: FontWeight.w100)),
             Text('Clic${clickCounter == 1 ? '' : 's'}', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w400))
            
            ],
            )
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            CustomButton(icon: Icons.plus_one,
            onPressed: (){
              setState(() {
                clickCounter=clickCounter + 1;
              });
            },), 
            SizedBox(height: 10,),

            CustomButton(icon: Icons.minimize,
            onPressed: (){
              setState(() {
                clickCounter=clickCounter - 1;
              });
            },),
            
            SizedBox(height: 10,),
            CustomButton(icon: Icons.refresh_outlined,
            onPressed: (){
              setState(() {
                clickCounter=0;
              });
            },)

            ],
          ),
          
      );//const Placeholder();
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton( 
      shape: const StadiumBorder(),
    onPressed: onPressed,
    child:Icon(icon),  );
  }
}