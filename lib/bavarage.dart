import 'package:flutter/material.dart';

class Bavarage extends StatefulWidget {
  const Bavarage({super.key});

  @override
  State<Bavarage> createState() => _BavarageState();
}

class _BavarageState extends State<Bavarage> {
    List name1 =[
    "images/pngfuel 12.png",
    "images/pngfuel 11.png",
    "images/tree-top-juice-apple-grape-64oz 1.png",
    "images/pngfuel 13.png",
    "images/tree-top-juice-apple-grape-64oz 1 (1).png",
    "images/pngfuel 14.png",
  ];
  List name2=[
    "Sprite Can",
    "Diet Coke",
    "Apple & Grape Juice",
    "Coca Cola Can",
    "Orenge Juice",
    "Pepsi"

  ];
  List name3 = [
    "1.50tjk",
    "1.99tjk",
    "15tjk",
    "2.99tjk",
    "1.5tjk",
    "2.15tjk",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Center(
              child: Text("Beverages",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
            ),
               SizedBox(height: 16,),
               Container(
                height: 650,
               color: Colors.white,
                 child: GridView.builder(
                          
                        physics: NeverScrollableScrollPhysics(),
                                         gridDelegate: const   SliverGridDelegateWithFixedCrossAxisCount(
                                         mainAxisSpacing: 20,
                                         crossAxisSpacing: 20,
                          crossAxisCount: 2
                          ),
                                         itemCount:name1.length,
                                         itemBuilder: (context,index){
                            return Container(
                                      padding: EdgeInsets.only(top: 10,),
                                      margin: EdgeInsets.all(10),
                                      width: 173,
                                     height: 248,
                                      
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(width: 1,color: Color.fromARGB(255, 195, 193, 193)),
                                        borderRadius: BorderRadius.circular(18),
                                        boxShadow: [
                                          BoxShadow(
                                           
                                           
                                          )
                                        ],
                                        
                                      ),
                                      child: Column(children: [
                                        Center(
                                          child: Container(
                                          width: 110,
                                          height: 46,
                                            decoration: BoxDecoration(
                                           image: DecorationImage(image: AssetImage("${name1[index]}"),)
                                            ),
                                          )
                                        ),
                                        SizedBox(height: 16,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("${name2[index]}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                                            Text("${name3[index]}",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,color: Color(0xff7C7C7C)),),
                                          ],
                                        ),
                                       
                                        
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(width: 0.5,),
                                            Text("4.99tjk",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                            Container(
                                              alignment: Alignment.center,
                                              child: Icon(Icons.add,size: 30,color: Colors.white,),
                                              width: 35,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                color: Color(0xff53B175),
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                            ),
                                            SizedBox(width: 0,),
                                          ],
                                        )
                                      ],
                                      ),
                                    );
                          
                          }
                          ),
               ),
          ],
        ),
      ),
    );
  }
}