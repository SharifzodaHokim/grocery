import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  List name1 =[
    "images/pngfuel 12.png",
    "images/pngfuel 11.png",
    "images/tree-top-juice-apple-grape-64oz 1.png",
    "images/pngfuel 13.png",
  ];
  List name2=[
    "Sprite Can",
    "Diet Coke",
    "Apple & Grape Juice",
    "Coca Cola Can",
  ];
  List name3 = [
    "1.50tjk",
    "1.99tjk",
    "15tjk",
    "2.99tjk",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 50,),
              Center(
                child: Text("Favorurite",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                
              ),
               SizedBox(height: 30,),
                Container(
                  height: 530,
                  child: ListView.builder(
                
                        scrollDirection: Axis.vertical,
                        itemCount: 4,
                        itemBuilder: (context,index){
                              return 
                              Column(
                                children: [
                                 Container(
                                   width: 400,
                                   height: 1,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                 ),
                                 SizedBox(height: 35,),
                                  Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: [
                                     Container(
                                       width: 70,
                                       height: 64,
                                       child: Image.asset("${name1[index]}",)),
                                       SizedBox(width: 20,),
                                       Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text("${name2[index]}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                           Text("1kg, Price",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,color:  Color(0xff7C7C7C)),),
                                           SizedBox(height: 10,),
                                         
                                         ],
                                       ),
                                       SizedBox(width: 30,),
                                       Row(
                                         
                                         children: [
                                          
                                           Text("${name3[index]}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                             SizedBox(height: 10,),
                                           Icon(Icons.keyboard_arrow_right_outlined,size: 30,),
                                       
                                         ],
                                       )
                                   ],
                                  ),
                                  SizedBox(height: 40,),
                                ],
                              );
                              
                              
                            }
                               ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 67,
                  width: 364,
                  child: Text("Add All To Cart",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xffffffff)),),
                  decoration: BoxDecoration(
                    color: Color(0xff53B175),
                    borderRadius: BorderRadius.circular(19),
        
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}