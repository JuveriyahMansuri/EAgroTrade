import 'package:flutter/material.dart';
import 'package:input_quantity/input_quantity.dart';
import 'package:flutter/cupertino.dart'; // used  for date and time

class AddAuction extends StatelessWidget {
  const AddAuction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Add Auction",
          style: TextStyle(fontWeight: FontWeight.bold),
          
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: SingleChildScrollView(
        // start main column

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 20),
              Stack(
                children: [
                  Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(204, 255, 246,
                          169), // Background color of the container
                      borderRadius: BorderRadius.circular(
                          10), // Border radius of the container
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            width: 120,
                            height: 120,
                            child: Image.asset("potato.jpg")),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: Text(
                            "Potato",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                child: SizedBox(height: 30),
              ),
              // start opening price textbox
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Opening Price',
                      prefixIcon: Icon(Icons.currency_rupee),
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Colors.transparent), // Outline color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Colors.lightGreen), // Focused outline color
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              // start qty textbox
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      child: SizedBox(
                        width: 400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                child: Text(
                              "Qty (in Kgs) : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,  color: Colors.grey[600],fontSize: 18),
                            )),
                            SizedBox(
                              width: 60,
                            ),
                            Container(
                              child: InputQty(
                                //color of the increase and decrease icon
                                maxVal: double.maxFinite, //max val to go
                                initVal: 1,
                                //min starting val
                                onQtyChanged: (val) {
                                  print("qty increased");
                                  //on value changed we may set the value
                                  //setstate could be called
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              // start start date time textbox
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      child: SizedBox(
                        width: 400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                child: Text(
                              "Start Auction : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,  color: Colors.grey[600],fontSize: 18),
                            )),
                            SizedBox(
                              width: 60,
                            ),
                            Container(
                              
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              // start end date time textbox
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      child: SizedBox(
                        width: 400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                child: Text(
                              "End Auction : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,  color: Colors.grey[600],fontSize: 18),
                            )),
                            SizedBox(
                              width: 60,
                            ),
                            Container(
                              
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),

              // start description textbox
               Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Description (Optional)',
                      // prefixIcon: Icon(Icons.currency_rupee),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Colors.transparent), // Outline color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Colors.lightGreen), // Focused outline color
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              // start notify btn
              Container(
                child: SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      print("notify button clicked");
                    },
                    child: Text("Notify"),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.lightGreenAccent),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
        //end main row
      ),
       bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
           label: 'My Auctions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
          ),
        ],
         selectedItemColor: Colors.lightGreen,
        unselectedItemColor: Colors.grey,
        currentIndex: 2,
        onTap: (int index) {
          // Handle navigation to different pages based on index
        },
      ),
    );
  }
}
