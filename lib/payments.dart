import 'package:flutter/material.dart';

class payments extends StatelessWidget {
  const payments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
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
        ],
      ),
      body:
        Column(
          children: [
            Container(
              child:Image.network('https://cdn.dribbble.com/users/616823/screenshots/5314333/media/4821e5ef3e0efcdf752741ed94d8de44.gif'),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child:Text('Your payment will be delivered to you shortly',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
              ),
            )
          ],
        )

    );
  }
}
