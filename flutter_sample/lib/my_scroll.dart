import 'package:flutter/material.dart';

class MyScroll extends StatelessWidget {
  const MyScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScrollView'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              boxContainer('one'),
              boxContainer('two'),
              boxContainer('three'),
              boxContainer('four'),
              boxContainer('five'),
              boxContainer('six'),
              boxContainer('seven'),
              boxContainer('egiht'),
            ],
          ),
        )
      ),
    );
  }
  Widget boxContainer(String txt) => Container(
    width: 100, height:150,
    color: Colors.cyan.shade300,
    margin: const EdgeInsets.all(20),
    alignment: Alignment.center,
    child: Text(txt, style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
  );
}