import 'package:flutter/material.dart';

class WorkWeek3 extends StatelessWidget {
  const WorkWeek3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('นายพัทธวี พงหนองพอก 1143'),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10),
        child: Column(
            children: [
              Image(image: AssetImage("images/yummama.jpg"),),
              Text('ยำมาม่ารวมมิตร',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold)),
              SizedBox(height: 20,),
              Text('ยำมาม่ารวมมิตรเป็นเมนูอาหารจานเดียวที่มีส่วนผสมหลากหลาย ทำให้อร่อยและเต็มอิ่มในจานเดียว ส่วนประกอบหลักของยำมาม่ารวมมิตรจะประกอบด้วยเส้นมาม่าและวัตถุดิบอื่น ๆ ที่มักใช้ ได้แก่ เนื้อสัตว์ เช่น กุ้ง ปลาหมึก หมูยอ ไส้กรอก ผสมกับผักสด เช่น หอมใหญ่ มะเขือเทศ ต้นหอม ผักชี เป็นต้น',
              textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Icon(Icons.star, color: Colors.black,size: 30,),
                            Icon(Icons.star, color: Colors.black,size: 30,),
                            Icon(Icons.star, color: Colors.black,size: 30,),
                            Icon(Icons.star, color: Colors.black,size: 30,),
                            Icon(Icons.star, color: Colors.black,size: 30,),
                            SizedBox(width: 8),
                            Text('170 Reviews',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          ],
                    ),
                    SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.kitchen,color: Colors.green,),
                            Text('PREP',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text('3 min',style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                        Column(
                            children: [
                              Icon(Icons.timer,color:  Colors.green,),
                              Text('COOK',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text('5 min',style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                        ),
                        Column(
                          children: [
                              Icon(Icons.restaurant,color:  Colors.green,),
                              Text('FEED',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text('4-6',style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
  }
}