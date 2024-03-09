import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random=Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('My First App')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text('lottery winning number is 5',textAlign: TextAlign.center,style: TextStyle(fontSize: 25), )),
            SizedBox(
              height: 10,
            ),
            Container(
              height: x==5 ? 500:400 ,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.teal.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(40),
              ),
              child: x==5 ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.done_all,color: Colors.indigo),
                  SizedBox(
                    height: 15,
                  ),
                  Center(child: Text('Congratulation You got your\n          lucky number 5',style: TextStyle(fontSize: 20),)),
                ],
              ):
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.error,color: Colors.red,),
                  SizedBox(
                    height: 15,
                  ),
                  Center(child: Text('  Your number is $x,\nBetter luck next time',style: TextStyle(fontSize: 20),)),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x=random.nextInt(10);
            print(x);
            setState(() {

            });
          },
          child: Icon(Icons.refresh),

        ),

      ),
    );
  }
}
