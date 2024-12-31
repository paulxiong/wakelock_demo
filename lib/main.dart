import 'package:flutter/material.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Always Lit Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AlwaysLitScreen(),
    );
  }
}

class AlwaysLitScreen extends StatefulWidget {
  @override
  _AlwaysLitScreenState createState() => _AlwaysLitScreenState();
}

class _AlwaysLitScreenState extends State<AlwaysLitScreen> {
  @override
  void initState() {
    super.initState();
    // Enable wakelock to keep the screen on
    WakelockPlus.enable();
  }

  @override
  void dispose() {
    // Optionally disable wakelock when leaving the screen
    WakelockPlus.disable();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Always Lit Screen'),
      ),
      body: Center(
        child: Text(
          'This screen will stay lit and never go dark!',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
