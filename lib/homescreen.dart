
import 'package:exsam2/productdetail.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<String> name1=[
    "images/92f1ea7dcce3b5d06cd1b1418f9b9413 3 (1).png",
    "images/pngfuel 1.png",
    "images/92f1ea7dcce3b5d06cd1b1418f9b9413 3 (3).png",
  ];
  List <String> name2=[
    "Organic Bananas",
    "Red Apple",
    "Bell Pepper Red",
  ];
  List<String> name3=[
    "7pcs, Priceg",
    "1kg, Priceg",
    "1kg, Priceg",
  ];
  List name4=[
    "images/4215936-pulses-png-8-png-image-pulses-png-409_409 1.png",
    "images/8-82858_download-sack-of-rice-png 1.png",
    "images/Group 6837.png",
  ];
  List name5 = [
    "Pulses",
    "Rice",
    "Dairy",
  ];
  List <Color> name6 = [
    Color.fromARGB(255, 250, 211, 196),
    Color.fromARGB(255, 191, 224, 250),
    Color.fromARGB(255, 179, 250, 124),
  ];
  List gary1 =[
    "images/92f1ea7dcce3b5d06cd1b1418f9b9413 3 (3).png",
    "images/pngfuel 3.png",
    "images/pngfuel 16.png",
  ];
  List gary2=[
    "Bell Pepper Red",
    "Ginger",
    "Eggs",
  ];
  List gary3= [
    "1kg, Priceg",
    "250gm, Priceg",
    "250gm, Priceg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
     body:SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.all(16.0),
         child: Column(
          children: [
            SizedBox(height: 60,),
            Center(
              child: Text("Dhaka, Banassre",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff4C4F4D)),),
            ),
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Exclusive Offer",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
                TextButton(onPressed: () {
                  
                }, child: Text("See all",style: TextStyle(fontSize: 16,color: Color(0xff53B175)),)),
              ],
            ),
            SizedBox(height: 20,),
             Container(
              height: 290,
             color: Colors.white,
               child: ListView.builder(
                
                        scrollDirection: Axis.horizontal,
                        itemCount: name1.length,
                        itemBuilder: (context,index){
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                               MaterialPageRoute(builder: (context) => Productdetail(),)
                               );
                            },
                            child: Container(
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
                                          height: 85,
                                            decoration: BoxDecoration(
                                           image: DecorationImage(image: AssetImage("${name1[index]}"),fit: BoxFit.cover)
                                            ),
                                          )
                                        ),
                                        SizedBox(height: 20,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("${name2[index]}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                                            Text("${name3[index]}",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,color: Color(0xff7C7C7C)),),
                                          ],
                                        ),
                                        SizedBox(height: 30,),
                                        
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(width: 0.5,),
                                            Text("4.99tjk",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                            Container(
                                              alignment: Alignment.center,
                                              child: Icon(Icons.add,size: 30,color: Colors.white,),
                                              width: 45,
                                              height: 45,
                                              decoration: BoxDecoration(
                                                color: Color(0xff53B175),
                                                borderRadius: BorderRadius.circular(17),
                                              ),
                                            ),
                                            SizedBox(width: 0,),
                                          ],
                                        )
                                      ],
                                      ),
                                    ),
                          );
                        
                        }
                        ),
             ),
             SizedBox(height: 25,),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Groceries",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
                TextButton(onPressed: () {
                  
                }, child: Text("See all",style: TextStyle(fontSize: 16,color: Color(0xff53B175)),)),
              ],
            ),
            SizedBox(height: 15,),
            Container(
              height: 120,
              child:  ListView.builder(

                
                        scrollDirection: Axis.horizontal,
                        itemCount: name1.length,
                        itemBuilder: (context,index){
                          return Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(16),
                            width: 248,
                            height: 120,
                            decoration: BoxDecoration(
                              color: name6[index],
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  
                                  width: 71,
                                  height: 71,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("${name4[index]}"),fit: BoxFit.cover)
                                  ),
                                  
                                ),
                                Text("    ${name5[index]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                              ],
                            ),
                          );
                        }
            )
  
            ),
            SizedBox(height: 15,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Best Selling",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
                TextButton(onPressed: () {
                  
                }, child: Text("See all",style: TextStyle(fontSize: 16,color: Color(0xff53B175)),)),
              ],
            ),
           SizedBox(height: 20,),
             Container(
              height: 290,
             color: Colors.white,
               child: ListView.builder(
                
                        scrollDirection: Axis.horizontal,
                        itemCount: name1.length,
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
              height: 85,
                decoration: BoxDecoration(
               image: DecorationImage(image: AssetImage("${gary1[index]}"),fit: BoxFit.cover)
                ),
              )
            ),
            SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${gary2[index]}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                Text("${gary3[index]}",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,color: Color(0xff7C7C7C)),),
              ],
            ),
            SizedBox(height: 30,),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 0.5,),
                Text("4.99tjk",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                Container(
                  alignment: Alignment.center,
                  child: Icon(Icons.add,size: 30,color: Colors.white,),
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0xff53B175),
                    borderRadius: BorderRadius.circular(17),
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
             SizedBox(width: 100,),
          ],
         ),
       ),
     ),
     );
  }
}


