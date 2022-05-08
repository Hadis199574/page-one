import 'package:flutter/material.dart';
import 'package:untitled30/screen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffEC0453),
        body: Container(
          child: Column(
            children: [
              Image.asset(
                'assets/rang.jpg',
                width: 800,
                height: 200,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'UI DESIGN',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              SizedBox(
                height: 250,
              ),
              OutlineButton(color: Colors.white,
                onPressed: () {setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return screen1();
                      },
                    ),
                  );
                });
                },
                child: Text(
                  'بعدی',
                  style: TextStyle(fontSize: 14,color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
