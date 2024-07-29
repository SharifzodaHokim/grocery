import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List name1 =[
    "images/pngfuel 6.png",
    "images/Group 6835.png",
    "images/pngfuel 9.png",
    "images/pngfuel 6 (1).png",
    "images/Group 6837 (1).png",
    "images/pngfuel 6 (2).png",
    "images/pngfuel 6.png",
    "images/pngfuel 6.png",
  ];
  List name2 = [
    "Frash Fruits",
    "Cooking Oil",
    "Meat & Fish",
    "Bakery & Snacks",
    "Dairy & Eggs",
    "Beverages",
    "Frash Fruits",
    "Frash Fruits",
  ];
  List name3 = [
    Color.fromARGB(255, 190, 222, 248),
    Color.fromARGB(255, 199, 112, 106),
    Color.fromARGB(255, 246, 189, 185),
    Color.fromARGB(255, 236, 196, 243),
    Color.fromARGB(255, 240, 233, 171),
    Color.fromARGB(255, 190, 222, 248),
    Color.fromARGB(255, 193, 223, 248),
    Color.fromARGB(255, 199, 112, 106),

  ];
  List name4=[
    Color(0xff53B175),
    Color(0xffF8A44C),
    Color(0xffF7A593),
    Color(0xffD3B0E0),
    Color(0xffFDE598),
    Color(0xffB7DFF5),
    Color(0xff836AF6),
    Color(0xffD73B77),
  ];
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child:Column( 
            children: [ 
              SizedBox(height: 50,),
              Center(
                child: Text("Find Products",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
              ),
              Container(
                height: 760,
                  child: GridView.builder(
                        
                      physics: NeverScrollableScrollPhysics(),
                                       gridDelegate: const   SliverGridDelegateWithFixedCrossAxisCount(
                                       mainAxisSpacing: 20,
                                       crossAxisSpacing: 20,
                        crossAxisCount: 2
                        ),
                                       itemCount: name1.length,
                                       itemBuilder: (context,index){
                        return Container(
                          padding: EdgeInsets.all(16),
                             width: 174,
                             height: 200,
                             decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color:name4[index],width: 1),
                              color: name3[index],
                             ),
                             child: Column(
                              children: [
                                Center(
                                  child: Container(
                                    width: 111,
                                    height: 65,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("${name1[index]}"),fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Column(
                                    children: [
                                      SizedBox(height: 25,),
                                      Text("${name2[index]}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900),),
                                    
                                    ],
                                  ),
                                )
                              ],
                             ),
                        );
                         
                                       
                        
                                       }
                  )
              )
            ], 
            )
        ),
      ),
    );
  }
}