// main.dart
import 'package:flutter/material.dart';

// The main entry point of the app
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // TASK 1: Change the title of the app
      title: 'My Awesome App',
      theme: ThemeData(
        // TASK 2: Change the primary swatch color (try Colors.red, Colors.green)
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TASK 3: Change the text in the top bar
        title: Text('Flutter is Fun'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // --- ROUND 3: SCROLLABLE LIST ---
            SizedBox(
              height: 200, // We need a fixed height for the list
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.star, color: Colors.amber),
                    title: Text('Item ${index + 1}'),
                    subtitle: Text('Description for item ${index + 1}'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  );
                },
              ),
            ),
            // --- END OF ROUND 3 ---
            SizedBox(height: 20), // Adds space between widgets
            // TASK 5: Change the subtitle text
            Text(
              'Let\'s learn Flutter together.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20), Text('Created by: Ronan Pelot'),
            // --- START OF MY NEW FEATURE ---
            Card(
              elevation: 4,
              margin: EdgeInsets.all(16),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Icon(Icons.person, size: 50, color: Colors.blue),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Goo Choi', 
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('Major: CS', 
                          style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // --- END OF MY NEW FEATURE ---
            ElevatedButton(
              onPressed: () {
                print('Button Clicked!');
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              // TASK 6: Change the text on the button
              child: Text('Press Here!')
            ),
          ],
        ),
      ),
    );
  }
}

// --- START OF SECOND FEATURE ---
class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Count: $_count', style: TextStyle(fontSize: 24)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => setState(() => _count--),
              child: Icon(Icons.remove),
            ),
            SizedBox(width: 20),
            ElevatedButton(
              onPressed: () => setState(() => _count++),
              child: Icon(Icons.add),
            ),
          ],
        ),
      ],
    );
  }
}
// --- END OF SECOND FEATURE ---