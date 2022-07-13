import 'package:doctor/screens/bottomnavigation.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Chat",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: IconButton(onPressed: () {
          Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Bottom()));
        }, icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
          iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
      ),

      body: Column(
        children: [
          SizedBox(height: 80,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFFFBE9D).withOpacity(0.5),
                      spreadRadius: 0.5,
                      blurRadius: 0.5,
                      offset: Offset(12, 15),
                    ),

                  ],
                  image: DecorationImage(image: AssetImage("assets/1639328.png"))
                ),
                
              ),
            ],
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Service Not available",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
          ],)
        ],
        
      
      ),
    );
  }
}
