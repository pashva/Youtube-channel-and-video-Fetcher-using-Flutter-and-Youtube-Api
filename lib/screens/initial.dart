import 'package:flutter/material.dart';
import 'package:youtube/screens/home_screen.dart';


class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  TextEditingController a=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Channel ID"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Enter the channel id",style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                        decoration: BoxDecoration(
                          
                        ),
                              child: TextField(
                                controller: a,
                              ),
                            ),
          ),
          FlatButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen(b:a.text)));
          }, child: Text("Go"))
        ],
      ),
      
    );
  }
}