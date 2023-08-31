import 'package:flutter/material.dart';

class RememberMeScreen extends StatefulWidget {
  @override
  _RememberMeScreenState createState() => _RememberMeScreenState();
}

class _RememberMeScreenState extends State<RememberMeScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Remember Me'),
      ),
      body: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap:
               () {
                setState(() {
                  _isChecked = !_isChecked;
                });
              },
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: _isChecked ? Colors.blue : Colors.grey,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(4.0),
                  color: _isChecked ? Colors.blue : Colors.white,
                ),
                child: _isChecked
                    ? Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 16.0,
                      )
                    : null,
              ),
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  Container( height: 100,
                  width: 100,
                  decoration: FlutterLogoDecoration(
                    
                  ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: RememberMeScreen(),
  ));
}
