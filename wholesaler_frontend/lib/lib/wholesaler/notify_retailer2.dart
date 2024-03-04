import 'package:flutter/material.dart';

class NotifyRetailer extends StatelessWidget {
  const NotifyRetailer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Center(
            child: Text("Auction Winner",
                style: TextStyle(fontWeight: FontWeight.bold))),
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.9, //50% of screen height
        width: MediaQuery.of(context).size.width * 0.9, //50% of screen width
        child: SingleChildScrollView(
           child: Column(
                 
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                         
                      color: Color.fromARGB(0, 255, 131, 146),
                       child:Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                          SizedBox(height: 20,),
                           Container(width: 100,height:100,child: Image.asset("C:/Users/Juveriyah/Desktop/CAPSTONE_PROJECT/EAgroTrade/wholesaler_frontend/assets/potato.jpg")),
                           SizedBox(height: 30,),
                           Container(child:Text("Potato",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),),
                         ],
                       ),
                    ),
                    SizedBox(height: 20,),
                        // start opening price textbox
                        Container(
                child:SizedBox(width: 400,
                    child: Text("Opening Price : ₹ 400",style: TextStyle(fontSize: 18),),
                        ),
                        ),
                        SizedBox(height:30),
                    // start qty textbox
                    Container(
                      child: SizedBox(width:400,
                        child: Row(
                          
                           mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(child: Text("Qty : 20 Kgs",style: TextStyle(fontSize: 18),)),
                            SizedBox(width: 60,),
                            Container(
                            
                               ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height:30),
                       // start final price textbox
                        Container(
                child:SizedBox(width: 400,
                    child: Text("Final Price : ₹ 1200",style: TextStyle(fontSize: 18),),
                        ),
                        ),
                        SizedBox(height:30),
                     // start start date time textbox
                    // Container(
                    //   child: SizedBox(width:400,
                         
                    //       child:Container(child: Text("Start Auction : 16-02-2024 at 02:30:00 PM",style: TextStyle(fontSize: 18),)),
                          
                        
                    //   ),
                    
                    //    ),
                    // SizedBox(height:30),
                        // start end date time textbox
                    Container(
                      child: SizedBox(width:400,
                         
                          child:Container(child: Text("Duration : 2 hours",style: TextStyle(fontSize: 18),)),
                          
                          // here below we will place date time picker
                       
                        
                      ),
                    
                       ),
                       SizedBox(height:30),
                  
                    // start description textbox
                        Container(
                child:SizedBox(width: 400,
                    child: Text("Winner : Ronald Richards",style: TextStyle(fontSize: 18),),
                        ),
                        ),
                    SizedBox(height:20),
                    // start notify btn
                    Container(
                      child:SizedBox(
                        width: 200,
                        child: ElevatedButton(onPressed: (){}, child: Text("Notify"),style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreenAccent),foregroundColor: MaterialStateProperty.all(Colors.white)),
                
                        ),
                      ),
                    ),
                  
                  ],
                ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: '',
          ),
        ],
      ),
    );
  }
}
