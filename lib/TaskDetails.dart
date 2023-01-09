import 'package:flutter/material.dart';
import 'TaskDetailsCompleted.dart';
class TaskDetails extends StatefulWidget {
  const TaskDetails({Key? key}) : super(key: key);

  @override
  State<TaskDetails> createState() => _TaskDetailsState();
}
const kHeading = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: Color(0xff6C6969),
);
const kContent = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.normal,
  color: Colors.black,
);
class _TaskDetailsState extends State<TaskDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: (){Navigator.pop(context);},color: Colors.black,),
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed:(){},icon: Icon(Icons.call),color: Colors.black),
          SizedBox(width: 20,),
          IconButton(icon: Icon(Icons.chat_outlined),onPressed: (){},color: Colors.black,),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [Icon(Icons.supervised_user_circle_outlined,color: Colors.blueGrey,size: 50,),Text('Employee Name',style: kHeading,),],
          ),
          Text('TASK TITLE',style: kHeading,),
          SizedBox(height: 10,),
          Text('WordPress theme setup',style: kContent,),
          SizedBox(height: 10,),
          Text('TASK COMPLETE DATE ',style: kHeading,),
          SizedBox(height: 10,),
          Text('10.01.2023',style: kContent,),
          SizedBox(height: 10,),
          Text('TASK DETAILS',style: kHeading,),
          SizedBox(height: 10,),
          Text('1.Choose a good theme for education site',style: kContent,),
          SizedBox(height: 10,),
          Text('2.Install WordPress',style: kContent,),
          SizedBox(height: 10,),
          Text('3.Setup this theme',style: kContent,),
          SizedBox(height: 10,),

          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const TaskDetailsComp()));}, child: Text('Mark as completed'),),
        ],
      )
    );
  }
}
