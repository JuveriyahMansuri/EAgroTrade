import 'package:flutter/material.dart';
class AddProduct extends StatefulWidget {
  AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  String dropdownValue = 'Vegetable';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Product",
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
      body: SingleChildScrollView( // Use SingleChildScrollView to avoid overflow when keyboard is visible
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  alignment: Alignment.center, // Align the image to the center of the container
                  children: [
                    Container(
                      width: 300, // Specify the width of the container
                      height: 250, // Specify the height of the container
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10), // Optional: if you want rounded corners
                      ),
                    ),
                    Image.asset(
                      'assets/potato.jpeg', // Your image asset path
                      width: 290, // Slightly less than the container to create a border effect
                      height: 190, // Slightly less than the container to create a border effect
                      fit: BoxFit.cover, // This will cover the area of the image
                    ),
                    Container(
                      width: 290,
                      height: 190,
                      alignment: Alignment.topRight, // Aligns the icon to the top right of the container
                      child: Icon(
                        Icons.edit, // Example icon
                        color: Colors.red, // Icon color
                        size: 30, // Icon size
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              // Your existing Widgets go here
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Product Name',
                  hintText: 'Product Name',
                  labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  hintStyle: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Unit Of Measurement',
                  hintText: 'Unit Of Measurement',
                  labelStyle:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  hintStyle: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    'Category:-',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      items: <String>['Vegetable', 'Fruit']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextField(
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  labelText: 'Description (Optional)',
                  hintText: 'Description (Optional)',
                  labelStyle:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  hintStyle: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(height: 80),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Add",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                    onPrimary: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 160, vertical: 10),
                  ),
                ),
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
        currentIndex: 1,
        onTap: (int index) {
          // Handle navigation to different pages based on index
        },
      ),
    );
  }
}