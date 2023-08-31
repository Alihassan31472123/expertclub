import 'package:flutter/material.dart';

class elevatedbutton extends StatefulWidget {
  const elevatedbutton({super.key});

  @override
  State<elevatedbutton> createState() => _elevatedbuttonState();
}

class _elevatedbuttonState extends State<elevatedbutton> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Center(
        child: ElevatedButton(child: Text('close'),
        onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}