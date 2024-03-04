import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyAuction(),
  ));
}

class MyAuction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Auctions",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_box_sharp),
            color: Colors.orange[300],
            onPressed: () {
              // Handle your icon press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    //borderSide: BorderSide(color: Colors.grey), // Outline color
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                        color: Colors.lightGreen), // Focused outline color
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Stack(
              children: [
                Text(
                  'Today', // Your first text
                  style: TextStyle(
                    fontSize: 20, // Adjust the font size as needed
                    color: Colors.black,
                    fontWeight:
                        FontWeight.bold, // Adjust the text color as needed
                  ),
                  overflow: TextOverflow
                      .ellipsis, // Prevents the text from overflowing
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // column of today
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height:
                            120, // Increased height to accommodate the additional text
                        decoration: BoxDecoration(
                          color: Colors
                              .yellow[100], // Background color of the container
                          borderRadius: BorderRadius.circular(
                              10), // Border radius of the container
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'potato.jpg', // Replace with your actual image asset
                                width: 100, // Adjust the size as needed
                                height: 100, // Adjust the size as needed
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Potato', // Your first text
                                    style: TextStyle(
                                      fontSize:
                                          20, // Adjust the font size as needed
                                      color: Colors.black,
                                      fontWeight: FontWeight
                                          .bold, // Adjust the text color as needed
                                    ),
                                    overflow: TextOverflow
                                        .ellipsis, // Prevents the text from overflowing
                                  ),
                                  Text(
                                    'Qty: 15 kgs', // Your second text goes here
                                    style: TextStyle(
                                      fontSize:
                                          14, // Adjust the font size as needed
                                      color: Colors
                                          .grey, // Adjust the text color as needed
                                    ),
                                    overflow: TextOverflow
                                        .ellipsis, // Prevents the text from overflowing
                                  ),
                                  Text(
                                    '₹300', // Your second text goes here
                                    style: TextStyle(
                                      fontSize:
                                          14, // Adjust the font size as needed
                                      color: Colors
                                          .black, // Adjust the text color as needed
                                    ),
                                    overflow: TextOverflow
                                        .ellipsis, // Prevents the text from overflowing
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.av_timer_rounded,
                                        size: 12,
                                        color: Colors.orange,
                                      ),
                                      Text(
                                        ' Starts in 2 hrs', // Your second text goes here
                                        style: TextStyle(
                                          fontSize:
                                              13, // Adjust the font size as needed
                                          color: Colors
                                              .black, // Adjust the text color as needed
                                        ),
                                        overflow: TextOverflow
                                            .ellipsis, // Prevents the text from overflowing
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                icon: Icon(Icons.delete,
                                    color: Colors
                                        .lightGreen), // Icon color set to red
                                onPressed: () {
                                  // Handle your delete functionality
                                  print('Delete clicked');
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle your Start functionality
                            print('Start clicked');
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white, // Button background color
                            onPrimary: Colors.lightGreen, // Text color
                            shape: RoundedRectangleBorder(
                              // Button shape
                              borderRadius: BorderRadius.circular(
                                  20), // Button border radius
                              side: BorderSide(
                                  color:
                                      Colors.lightGreen), // Button border color
                            ),
                          ),
                          child: Text('Start'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        height:
                            120, // Increased height to accommodate the additional text
                        decoration: BoxDecoration(
                          color: Colors
                              .pink[50], // Background color of the container
                          borderRadius: BorderRadius.circular(
                              10), // Border radius of the container
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'tomato.jpg', // Replace with your actual image asset
                                width: 100, // Adjust the size as needed
                                height: 100, // Adjust the size as needed
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Tomato', // Your first text
                                    style: TextStyle(
                                      fontSize:
                                          20, // Adjust the font size as needed
                                      color: Colors.black,
                                      fontWeight: FontWeight
                                          .bold, // Adjust the text color as needed
                                    ),
                                    overflow: TextOverflow
                                        .ellipsis, // Prevents the text from overflowing
                                  ),
                                  Text(
                                    'Qty: 25 kgs', // Your second text goes here
                                    style: TextStyle(
                                      fontSize:
                                          14, // Adjust the font size as needed
                                      color: Colors
                                          .grey, // Adjust the text color as needed
                                    ),
                                    overflow: TextOverflow
                                        .ellipsis, // Prevents the text from overflowing
                                  ),
                                  Text(
                                    '₹400', // Your second text goes here
                                    style: TextStyle(
                                      fontSize:
                                          14, // Adjust the font size as needed
                                      color: Colors
                                          .black, // Adjust the text color as needed
                                    ),
                                    overflow: TextOverflow
                                        .ellipsis, // Prevents the text from overflowing
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.av_timer_rounded,
                                        size: 12,
                                        color: Colors.orange,
                                      ),
                                      Text(
                                        ' 01:23s remaining', // Your second text goes here
                                        style: TextStyle(
                                          fontSize:
                                              13, // Adjust the font size as needed
                                          color: Colors
                                              .black, // Adjust the text color as needed
                                        ),
                                        overflow: TextOverflow
                                            .ellipsis, // Prevents the text from overflowing
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                icon: Icon(Icons.delete,
                                    color: Colors
                                        .lightGreen), // Icon color set to red
                                onPressed: () {
                                  // Handle your delete functionality
                                  print('Delete clicked');
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle your auction functionality
                            print('Active clicked');
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white, // Button background color
                            onPrimary: Colors.lightGreen, // Text color
                            shape: RoundedRectangleBorder(
                              // Button shape
                              borderRadius: BorderRadius.circular(
                                  20), // Button border radius
                              side: BorderSide(
                                  color:
                                      Colors.lightGreen), // Button border color
                            ),
                          ),
                          child: Text('Active'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Text(
                  'Yesterday', // Your first text
                  style: TextStyle(
                    fontSize: 20, // Adjust the font size as needed
                    color: Colors.black,
                    fontWeight:
                        FontWeight.bold, // Adjust the text color as needed
                  ),
                  overflow: TextOverflow
                      .ellipsis, // Prevents the text from overflowing
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  height:
                      120, // Increased height to accommodate the additional text
                  decoration: BoxDecoration(
                    color:
                        Colors.yellow[100], // Background color of the container
                    borderRadius: BorderRadius.circular(
                        10), // Border radius of the container
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'brinjal.jpg', // Replace with your actual image asset
                          width: 100, // Adjust the size as needed
                          height: 100, // Adjust the size as needed
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Brinjal', // Your first text
                              style: TextStyle(
                                fontSize: 20, // Adjust the font size as needed
                                color: Colors.black,
                                fontWeight: FontWeight
                                    .bold, // Adjust the text color as needed
                              ),
                              overflow: TextOverflow
                                  .ellipsis, // Prevents the text from overflowing
                            ),
                            Text(
                              'Qty: 10 kgs', // Your second text goes here
                              style: TextStyle(
                                fontSize: 14, // Adjust the font size as needed
                                color: Colors
                                    .grey, // Adjust the text color as needed
                              ),
                              overflow: TextOverflow
                                  .ellipsis, // Prevents the text from overflowing
                            ),
                            Text(
                              '₹500', // Your second text goes here
                              style: TextStyle(
                                fontSize: 14, // Adjust the font size as needed
                                color: Colors
                                    .black, // Adjust the text color as needed
                              ),
                              overflow: TextOverflow
                                  .ellipsis, // Prevents the text from overflowing
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.av_timer_rounded,
                                  size: 12,
                                  color: Colors.orange,
                                ),
                                Text(
                                  ' Ended', // Your second text goes here
                                  style: TextStyle(
                                    fontSize:
                                        13, // Adjust the font size as needed
                                    color: Colors
                                        .black, // Adjust the text color as needed
                                  ),
                                  overflow: TextOverflow
                                      .ellipsis, // Prevents the text from overflowing
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          icon: Icon(Icons.delete,
                              color:
                                  Colors.lightGreen), // Icon color set to red
                          onPressed: () {
                            // Handle your delete functionality
                            print('Delete clicked');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle your auction functionality
                      print('Manage Bid clicked');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // Button background color
                      onPrimary: Colors.lightGreen, // Text color
                      shape: RoundedRectangleBorder(
                        // Button shape
                        borderRadius:
                            BorderRadius.circular(20), // Button border radius
                        side: BorderSide(
                            color: Colors.lightGreen), // Button border color
                      ),
                    ),
                    child: Text('Manage Bid'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  height:
                      120, // Increased height to accommodate the additional text
                  decoration: BoxDecoration(
                    color: Colors.pink[50], // Background color of the container
                    borderRadius: BorderRadius.circular(
                        10), // Border radius of the container
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'tomato.jpg', // Replace with your actual image asset
                          width: 100, // Adjust the size as needed
                          height: 100, // Adjust the size as needed
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tomato', // Your first text
                              style: TextStyle(
                                fontSize: 20, // Adjust the font size as needed
                                color: Colors.black,
                                fontWeight: FontWeight
                                    .bold, // Adjust the text color as needed
                              ),
                              overflow: TextOverflow
                                  .ellipsis, // Prevents the text from overflowing
                            ),
                            Text(
                              'Qty: 45 kgs', // Your second text goes here
                              style: TextStyle(
                                fontSize: 14, // Adjust the font size as needed
                                color: Colors
                                    .grey, // Adjust the text color as needed
                              ),
                              overflow: TextOverflow
                                  .ellipsis, // Prevents the text from overflowing
                            ),
                            Text(
                              '₹1000', // Your second text goes here
                              style: TextStyle(
                                fontSize: 14, // Adjust the font size as needed
                                color: Colors
                                    .black, // Adjust the text color as needed
                              ),
                              overflow: TextOverflow
                                  .ellipsis, // Prevents the text from overflowing
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.av_timer_rounded,
                                  size: 12,
                                  color: Colors.orange,
                                ),
                                Text(
                                  ' Ended', // Your second text goes here
                                  style: TextStyle(
                                    fontSize:
                                        9, // Adjust the font size as needed
                                    color: Colors
                                        .grey, // Adjust the text color as needed
                                  ),
                                  overflow: TextOverflow
                                      .ellipsis, // Prevents the text from overflowing
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          icon: Icon(Icons.delete,
                              color:
                                  Colors.lightGreen), // Icon color set to red
                          onPressed: () {
                            // Handle your delete functionality
                            print('Delete clicked');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                // Positioned(
                //   right: 0,
                //   bottom: 0,
                //   // child: ElevatedButton(
                //   //   onPressed: () {
                //   //     // Handle your auction functionality
                //   //     print('Active clicked');
                //     // },
                //   //   style: ElevatedButton.styleFrom(
                //   //     primary: Colors.white, // Button background color
                //   //     onPrimary: Colors.lightGreen, // Text color
                //   //     shape: RoundedRectangleBorder( // Button shape
                //   //       borderRadius: BorderRadius.circular(20), // Button border radius
                //   //       side: BorderSide(color: Colors.lightGreen), // Button border color
                //   //     ),
                //   //   ),
                //   //   child: Text('Active'),
                //   // ),
                // ),
              ],
            ),
          ],
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
        currentIndex: 1,
        onTap: (int index) {
          // Handle navigation to different pages based on index
        },
      ),
    );
  }
}
