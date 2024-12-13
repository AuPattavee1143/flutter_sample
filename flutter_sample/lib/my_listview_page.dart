import 'dart:math';

import 'package:flutter/material.dart';

class MyListviewPage extends StatefulWidget {
  const MyListviewPage({super.key});

  @override
  State<MyListviewPage> createState() => _MyListviewPageState();
}

class _MyListviewPageState extends State<MyListviewPage> {
  var rnd = Random();
  var titleText = ['Star', 'Heart', 'Wi-Fi', 'Bluetooth', 'Gear'];
  var leadingIcon = [Icons.star,Icons.favorite,Icons.wifi,Icons.bluetooth,Icons.settings];
  var switchwifi = true;
  var swichbluetooth = false;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar:  AppBar(title: const Text('ListVIew'), centerTitle: true,),
    body: ListView.separated(
      padding: const EdgeInsets.all(20),
      itemCount: titleText.length,
      itemBuilder: (context, index) => buildListItem(context, index) , 
      separatorBuilder: (context, index) =>  const Divider(
        thickness: 1,
        color: Colors.blueGrey,
        indent: 10,
        endIndent: 10,
      ), 
    ), 
  );
  
  Widget buildListItem(BuildContext ctx, int index){
    return ListTile(
      leading: Icon(leadingIcon[index], size: 36,),
      title: Text(titleText[index]),
      subtitle: Text('\$${rnd.nextInt(50)+10}'),
      trailing: trailingWidget(ctx, index),
      iconColor: Colors.deepPurple,
      onTap: ()=> myAlert(ctx, 'เปิดดูรายการ${titleText[index]}' ),
    );
  }

  Widget trailingWidget(BuildContext ctx, int index){
    var widget = <Widget>[
      const Icon(Icons.arrow_forward_ios),
      InkWell(
        child: const Icon(Icons.shopping_cart),
        onTap: ()=>myAlert(ctx, 'ได้หยิบ ${titleText[index]} ใส่รถเข็นเเล้ว'),
      ),
      Switch(
        value: switchwifi,
        onChanged: (isOn) => setState(() {
          switchwifi = isOn;
          var msg = (isOn)?'เปิด':'ปิด';
          myAlert(ctx, '${titleText[index]}: $msg');
        }),
      ),
      Switch(
        value: swichbluetooth, 
        onChanged: (isOn) => setState(() {
          swichbluetooth = isOn;
          var msg = (isOn)?'เปิด':'ปิด';
          myAlert(ctx, '${titleText[index]}: $msg');
        }),
      ),
      InkWell(
        child: const Icon(Icons.shopping_cart),
        onTap: ()=>myAlert(ctx, 'ได้หยิบ ${titleText[index]} ใส่รถเข็นแล้ว'),
      )
    ];
    return widget[index];
  }

  void myAlert(BuildContext ctx,String txt){
    showDialog(
      context: ctx,
      builder: (ctx) => AlertDialog(
        content: Text(txt),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(), 
            child: const Text('OK'))
        ],
    )
  );
 }
}