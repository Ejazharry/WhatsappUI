

import 'package:flutter/material.dart';
import 'chat.dart';

class Calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
         child: Text(
              'Calls'
          ),

        )
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black87,
        child: Icon(
          Icons.add_call,
          color: Colors.white,
        ),
        onPressed: () => print("new call"),
      ),
    );
      
    
  }
}