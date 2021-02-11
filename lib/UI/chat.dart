import 'package:flutter/material.dart';


class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Chats'),),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black87,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
