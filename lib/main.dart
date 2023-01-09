import 'package:cehpoint_intern/payments.dart';
import 'package:flutter/material.dart';
import 'TaskDetails.dart';
import 'payments.dart';
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.supervised_user_circle_outlined),
            color: Colors.black),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.call), color: Colors.black),
          SizedBox(
            width: 20,
          ),
          IconButton(
            icon: Icon(Icons.chat_outlined),
            onPressed: () {},
            color: Colors.black,
          ),
          PopupMenuButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                  child: Row(
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Call the CEO')
                ],
              )),
              PopupMenuItem(
                  child: GestureDetector(
                    onTap: (){Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const payments()),
                    );},
                    child: Row(
                children: [
                    Icon(
                      Icons.payments_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(width: 10),
                    Text('Payments')
                ],
              ),
                  )),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Log Out')
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('MY TASKS:',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16,),textAlign: TextAlign.center,),
            SizedBox(height: 5.0,),
            reusable_card('TASK 1'),
            reusable_card('TASK 2'),
            reusable_card('TASK 3'),
            reusable_card('TASK 4'),
            reusable_card('TASK 5'),
            reusable_card('TASK 6'),
            reusable_card('TASK 7'),
            reusable_card('TASK 8'),
            reusable_card('TASK 9'),
            reusable_card('TASK 10'),
            reusable_card('TASK 11'),
          ],
        ),
      ),
    );
  }
}

class reusable_card extends StatelessWidget {
  reusable_card(this.task);
  final task;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const TaskDetails()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 5,
            color: Color(0xFFD4C00B),

          ),
          color: Color(0xFFD4C00B),
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.all(12.0),
        height: 50,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
              width: 30,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {},
                child: Text(' '),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(task,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16,),textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}
