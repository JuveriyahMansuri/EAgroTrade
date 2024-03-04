import 'package:flutter/material.dart';
class Splash_Authentication extends StatefulWidget {
  Splash_Authentication({super.key});

  @override
  State<Splash_Authentication> createState() => _Splash_AuthenticationState();
}

class _Splash_AuthenticationState extends State<Splash_Authentication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView( // Wrap the Column with SingleChildScrollView
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0), // Add padding to the left
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sign in",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 20.0), // Add padding to the left
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "To EAgroTrade",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 20.0), // Add padding to the left
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "to access your Business,Auctions & Orders.",
                ),
              ),
            ),
            SizedBox(height: 200),
            TextField(
              decoration: InputDecoration(
                hintText: "+91",
                icon: Icon(Icons.phone),
              ),
            ),
            SizedBox(height: 320),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Get OTP"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightGreen,
                  onPrimary: Colors.white,
                  elevation: 5, // Elevation (shadow)
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Rounded corners
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "By continuing, you agree to our Terms of Service and Privacy & Legal Policy",
              style: TextStyle(fontSize: 15, color: Colors.grey, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}

