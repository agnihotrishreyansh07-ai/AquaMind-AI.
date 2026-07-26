import 'package:flutter/material.dart';

void main() {
  runApp(const AquaMindApp());
}

class AquaMindApp extends StatelessWidget {
  const AquaMindApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AquaMind Citizen',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AquaMind Citizen Alerts'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.water_drop, size: 100, color: Colors.blue),
              SizedBox(height: 20),
              Text(
                'Water Supply Status: Normal',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
