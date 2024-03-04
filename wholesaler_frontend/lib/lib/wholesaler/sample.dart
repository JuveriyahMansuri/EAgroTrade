import 'package:flutter/material.dart';

class Sample extends StatelessWidget {
  const Sample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Text("hello"),
                  Text("hello"),
                  Text("hello"),
                  Text("hello"),
                  Text("hello"),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
