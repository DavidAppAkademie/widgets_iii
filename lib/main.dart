import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text("Hallo")),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Opacity(
                opacity: 0.2,
                child: Image.asset(
                  fit: BoxFit.fill,
                  'assets/images/a.png',
                ),
              ),
            ),
            Column(
              children: [
                Center(
                  child: Container(
                    color: Colors.amberAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/b.png',
                        width: 100,
                      ),
                    ),
                  ),
                ),
                Text(
                  "Hallo Welt",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
