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
              height: 40,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Text("hii"),
                  Text("hii"),
                  Text("hii"),
                  Text("hii"),
                  Text("hii"),
                  Text("hii"),
                  Text("hii"),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Text("hello"),
                  Text("hello"),
                  Text("hello"),
                  Text("hello"),
                  Text("hello"),
                  Text("hello"),
                  Text("hello"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
