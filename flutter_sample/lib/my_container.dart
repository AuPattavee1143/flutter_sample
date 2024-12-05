import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Using Container'),
        backgroundColor: Colors.purple.shade200,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              container1(),
              container2(),
              container3(),
            ],
          ),
        ),
      )
    );
  }
  Widget container2() => Container(
    height: 200, width: 150,
    margin: const EdgeInsets.all(50),
    padding: const EdgeInsets.only(top:50, left: 10),
    decoration: BoxDecoration(
      color: Colors.black,
      border: Border.all(
        color: Colors.yellow,
        style: BorderStyle.solid,
        width: 10
      ),
      shape: BoxShape.rectangle,
      borderRadius: const BorderRadius.all(Radius.elliptical(50, 50))
    ),
    child: const Text('L O V E', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: Colors.white70),),
  );

  Widget container1() => Container(
    color: Colors.purple.shade100,
        height: 200,
        width: 200,
        margin: const EdgeInsets.all(50),
        padding: const EdgeInsets.all(50),
        child: const Text("I'M R I C H",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
    );
  
  Widget container3() => Container(
    margin: const EdgeInsets.all(50),
    padding: const EdgeInsets.only(top:50, left: 50),
    height: 200,
    width: 200,
    decoration: BoxDecoration(
      color: Colors.yellow.shade900,
      border: Border.all(
        color: Colors.black,
        style: BorderStyle.solid,
        width: 10,
      ),
      shape: BoxShape.circle,
    ),
    child: const Text("Circle",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
  );
}