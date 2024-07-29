import 'package:exsam2/sighin.dart';
import 'package:flutter/material.dart';

class Onbording extends StatefulWidget {
  const Onbording({super.key});

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/8140 1.png",),fit: BoxFit.cover),


        ),
        child: Column(
          children: [
            SizedBox(height: 370,),
              Center(
                child: Image.asset("images/Group (2).png"),
              ),
              SizedBox(height: 20,),
              Center(
   child: Column(
    children: [
      Text("Welcome",style: TextStyle(fontSize: 48,fontWeight: FontWeight.w600,color: Colors.white),),
      Text("to our store",style: TextStyle(fontSize: 48,fontWeight: FontWeight.w600,color: Colors.white),)
    ],
   ),
              ),
              SizedBox(height: 5,),
              Center(
                child: Text("Ger your groceries in as fast as one hour",style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 211, 204, 204),),),
              ),
              SizedBox(height: 30,),
              InkWell(
                onTap: () {
                  Navigator.push(context, 
                MaterialPageRoute(builder: (context) => Sighin(),)
                );

                },
                child: Center(
                  child: Container(
                    alignment: Alignment.center,
                    width: 353,
                    height: 67,
                    decoration: BoxDecoration(
                      color: Color(0xff53B175),
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: 
                    Text("Get Started",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white),),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}