import 'package:flutter/material.dart';
class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "EAgroTrade",
              style: TextStyle(color: Colors.lightGreen, fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Image.asset(
              'assets/img.png',
              height: 50,
              width: 40,
            ),
            SizedBox(width: 8),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello Tony!!",
                    style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
                  ),
                  IconButton(
                    icon: Icon(Icons.circle_notifications, size: 40, color: Colors.lightGreen),
                    onPressed: () {
                      // Add your notification icon onPressed logic here
                    },
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My Products",
                        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        icon: Icon(Icons.add_box_sharp,color: Colors.orange[300],size: 30,),
                        onPressed: () {
                          // Handle your icon press
                        },
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 30, right: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.yellow[200],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/potato.jpeg',
                                height: 100,
                                width: 150,
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Potato",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Fresh & organic",
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 30, right: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red[100],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/tomato.jpeg',
                                height: 100,
                                width: 170,
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Tomato",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Fresh & organic",
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 30, right: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.purple[50],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/onion.jpeg',
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Onion",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Fresh & organic",
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Auction",
                        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        icon: Icon(Icons.add_box_sharp,color: Colors.orange[300],size: 30,),
                        onPressed: () {
                          // Handle your icon press
                        },
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 30),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.yellow[200],
                          ),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Image.asset(
                                    'assets/potato.jpeg',
                                    height: 100,
                                    width: 180,
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    "Potato",
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "Qty:-25kgs",
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "₹400",
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 300,
                              ),
                              Positioned(
                                right: 0,
                                bottom: 0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    onPrimary: Colors.green,
                                    side: BorderSide(color: Colors.green),
                                  ),
                                  child: Text(
                                    "Active",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0, // Align text and icon at the top of the container
                                right: 0, // Align text and icon to the left side of the container
                                child: Row(
                                  children: [
                                    Icon(Icons.timer, color: Colors.orange[300]), // Timer icon
                                    SizedBox(width: 4), // Provide some spacing between the icon and text
                                    Text(
                                      "01:23min Remaining", // Your desired text
                                      style: TextStyle(
                                        color: Colors.black,

                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(left: 10, top: 30),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red[100],
                          ),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Image.asset(
                                    'assets/tomato.jpeg',
                                    height: 100,
                                    width: 180,
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    "Tomato",
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "Qty:-25kgs",
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "₹400",
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 300,
                              ),
                              Positioned(
                                right: 0,
                                bottom: 0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    onPrimary: Colors.green,
                                    side: BorderSide(color: Colors.green),
                                  ),
                                  child: Text(
                                    "Start",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0, // Align text and icon at the top of the container
                                right: 0, // Align text and icon to the left side of the container
                                child: Row(
                                  children: [
                                    Icon(Icons.timer, color: Colors.orange[300]), // Timer icon
                                    SizedBox(width: 4), // Provide some spacing between the icon and text
                                    Text(
                                      "Starts in 1hrs", // Your desired text
                                      style: TextStyle(
                                        color: Colors.black,

                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(left: 10, top: 30),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.purple[50],
                          ),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Image.asset(
                                    'assets/onion.jpeg',
                                    height: 100,
                                    width: 150,
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    "Onion",
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "Qty:-25kgs",
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "₹400",
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 300,
                              ),
                              Positioned(
                                right: 0,
                                bottom: 0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    onPrimary: Colors.green,
                                    side: BorderSide(color: Colors.green),
                                  ),
                                  child: Text(
                                    "Start",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0, // Align text and icon at the top of the container
                                right: 0, // Align text and icon to the left side of the container
                                child: Row(
                                  children: [
                                    Icon(Icons.timer, color: Colors.orange[300]), // Timer icon
                                    SizedBox(width: 4), // Provide some spacing between the icon and text
                                    Text(
                                      "Starts in 2hrs", // Your desired text
                                      style: TextStyle(
                                        color: Colors.black,

                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Add Product',
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
        currentIndex: 0,
        onTap: (int index) {
          // Handle navigation to different pages based on index
        },
      ),
    );
  }
}