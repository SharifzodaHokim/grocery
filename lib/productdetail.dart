import 'package:exsam2/bavarage.dart';
import 'package:flutter/material.dart';

class Productdetail extends StatefulWidget {
  const Productdetail({super.key});

  @override
  State<Productdetail> createState() => _ProductdetailState();
}

class _ProductdetailState extends State<Productdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
            width: 413,
            height: 371,
            decoration: BoxDecoration(
              color: Color(0xffF2F3F2),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight:Radius.circular(25),),
            ),
            child: Image.asset("images/Vector (6).png"),
            ),
            Container(
              padding: EdgeInsets.all(16),
             
              
              child: Column(
                children: [
                  Row(
                  
                    children: [
                      SizedBox(height: 20,),
                      Text("Naturel Red Apple                    ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),
                      Icon(Icons.favorite_outline),
                    ],
                  ),
                  Text("1kg, Price                                                                   ",style: TextStyle(color: Color(0xff7C7C7C),fontSize: 16),),
                SizedBox(height: 30,),
                Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Container(
                        width: 130,
                        
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 17,
                              height: 2.5,
                              decoration: BoxDecoration(
                                color: Color(0xffB3B3B3),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              alignment: Alignment.center,
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                border: Border.all(width: 1,color: Colors.grey),
                                
                              ),
                              child: Text("1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            ),
                             SizedBox(width: 10,),
                            Icon(Icons.add,color: Colors.green,),
                          ],
                        ),
                      ),
                      Text("4.99tjk",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),)
                     ],
                ),
                SizedBox(height: 30,),
                Container(
                  width: 400,
                  height: 1,
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Product Detail",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                    Icon(Icons.keyboard_arrow_down_outlined,size: 30,),
                  ],
                ),
                SizedBox(height: 20,),
                Text("Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",style: TextStyle(fontSize: 13,color: Color(0xff7C7C7C)),),
                 SizedBox(height: 30,),
                Container(
                  width: 400,
                  height: 1,
                  color: Colors.black,
                ),
                 SizedBox(height: 15,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Nutritions",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                     Icon(Icons.keyboard_arrow_right_outlined,size: 30,),
                   ],
                 ),
                  SizedBox(height: 15,),
                    Container(
                  width: 400,
                  height: 1,
                  color: Colors.black,
                ),
                SizedBox(height: 15,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Nutritions",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("images/Group 6834.png"),
                          SizedBox(width: 20,),
                           Icon(Icons.keyboard_arrow_right_outlined,size: 30,),
                        ],
                      ),
                    ),
                 
                   ],
                 )
                ],
              ),
        
            ),
              SizedBox(height: 30,),
                    Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => Bavarage(),)
                );
              },
              child: Container(
                alignment: Alignment.center,
                child: Text("Add To Basket",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xffffffff)),),
                width: 364,
                height: 67,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  color: Color(0xff53B175),
                ),
              ),
            ),
                    ),
                    SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}