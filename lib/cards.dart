import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  List name1 =[
    "images/92f1ea7dcce3b5d06cd1b1418f9b9413 3 (3).png",
    "images/pngfuel 16.png",
    "images/92f1ea7dcce3b5d06cd1b1418f9b9413 3 (1).png",
    "images/pngfuel 3.png",
  ];
  List name2=[
    "Bell Peper Red",
    "Egg Chicken Red",
    "Organic Bananas",
    "Ginger",
  ];
  List name3 = [
    "4.99tjk",
    "1.99tjk",
    "3.00tjk",
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
                child: Text("My Cart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                
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
                                 SizedBox(height: 30,),
                                  Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: [
                                     Container(
                                       width: 70,
                                       height: 64,
                                       child: Image.asset("${name1[index]}",fit: BoxFit.cover,)),
                                       SizedBox(width: 20,),
                                       Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text("${name2[index]}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                           Text("1kg, Price",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,color:  Color(0xff7C7C7C)),),
                                           SizedBox(height: 10,),
                                           Row(
                                             children: [
                                               Container(
                                                  alignment: Alignment.center,
                                                 width: 45,
                                                 height: 45,
                                                 child: Container(
                                                   width: 17,
                                                   height: 3,
                                                   color: Color(0xffB3B3B3),
                                                 ),
                                                 decoration: BoxDecoration(
                                                   borderRadius: BorderRadius.circular(17),
                                                   border: Border.all(color: Color(0xffB3B3B3),width: 1),
                                                 ),
                                               ),
                                               SizedBox(width: 5,),
                                               Text("1",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                                               SizedBox(width: 5,),
                                                Container(
                                                 alignment: Alignment.center,
                                                 width: 45,
                                                 height: 45,
                                                 child:Icon(Icons.add),
                                                 decoration: BoxDecoration(
                                                   borderRadius: BorderRadius.circular(17),
                                                   border: Border.all(color: Color(0xffB3B3B3),width: 1),
                                                 ),
                                               )
                                             ],
                                           ),
                                         ],
                                       ),
                                       SizedBox(width: 30,),
                                       Column(
                                         
                                         children: [
                                           Icon(Icons.close,size: 20,),
                                           SizedBox(height: 30,),
                                           Text("${name3[index]}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
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
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(context: context, builder: (context) {
                      return Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Checkout",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
                                 IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon:  Icon(Icons.close,size: 30,)),
                              ],
                            ),
                            hokim(bar: "Delivery",bar1: "Select Method   ",),
                            hokim(bar: "Pament",bar1: "images/card.png   ",),
                            hokim(bar: "Promo Code",bar1: "Pick discount   ",),
                            hokim(bar: "Total Cost",bar1: "13.97tjk   ",),
                            SizedBox(height: 5,),
                             Container(
          width: 400,
          height: 1,
          color: Colors.black,
        ),
        SizedBox(height: 10,),
                           Column(
                  children: [
                    Text("By placing an order you agree to our Terms And Conditions",style: TextStyle(fontSize: 14,color: Color(0xff7c7c7c)),),
                  ],
                ),
                 SizedBox(height: 10,),
                Container(
                  alignment: Alignment.center,
                  child: Text("Place Order",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w600),),
                  width: 364,
                  height: 67,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    color: Color(0xff53B175),
                  ),
                )
                            
                          ],
                        ),
                      );
                    },);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 67,
                    width: 364,
                    child: Text("Go to Checkout",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xffffffff)),),
                    decoration: BoxDecoration(
                      color: Color(0xff53B175),
                      borderRadius: BorderRadius.circular(19),
                          
                    ),
                  ),
                ),
                
            ],
          ),
        ),
      ),
    );
  }
}

class hokim extends StatelessWidget {
  final bar;
  final bar1;
   hokim({
    super.key,
    this.bar,
    this.bar1,
  });

  List name=[
    "Delivery",
    "Pament",
    "Promo Code",
    "Total Cost"
  ];

  List name2=[
    "Select Method",
    "images/card.png",
    "Pick discount",
    "13.97tjk",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 400,
          height: 1,
          color: Colors.black,
        ),
         SizedBox(height: 20,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
        Text(bar,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff7c7c7c)),),
        Container(
          child: Row(
            children: [
              Text(bar1    ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
            
              
            ],
          ),
        )
       ],
    ),
    SizedBox(height: 5,),
      ],
    );
  }
}