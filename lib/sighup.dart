import 'package:exsam2/homescreen.dart';
import 'package:exsam2/sighin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Sighup extends StatefulWidget {
  const Sighup({super.key});

  @override
  State<Sighup> createState() => _SighupState();
}

class _SighupState extends State<Sighup> {
TextEditingController b = TextEditingController(text: "Sharifzoda Hokim");
TextEditingController j = TextEditingController(text: "Mickel  Tyson");
TextEditingController d = TextEditingController(text: "Hokim0206");
  int cnt=0;
  String a="Hokim0206";
   String k="";
  List <bool> man = [
    true,
    false,
  ];
  List <Icon> ikon = [
Icon(Icons.visibility_off_outlined,color: Colors.grey,),
Icon(Icons.visibility_outlined,color: Colors.grey,),
  ];
  void name(){
    setState(() {
      if(cnt==1){
        cnt=0;
      }
      else{
        cnt++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            
            children: [
              SizedBox(height: 100,),
              Center(
                child: Column(
                  children: [
                    Text("Sign up now",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600),),
                    SizedBox(height: 10,),
                    Text("Please fill the details and create account",style: TextStyle(fontSize: 16,color: Color(0xff7D848D),fontWeight: FontWeight.w400),),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 33,),
                  Container(
                    width: 335,
                    height: 56,
                    child: TextField(
                     controller: b,
                      
                      decoration: InputDecoration(
                        fillColor: Color(0xffF7F7F9),
                        filled: true,
                        
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none
                        ),
                      ),
                    ),
                  ),
                   SizedBox(height: 17,),
                    Container(
                    width: 335,
                    height: 56,
                    child: TextField(
                     controller: j,
                      
                      decoration: InputDecoration(
                        fillColor: Color(0xffF7F7F9),
                        filled: true,
                        
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none
                        ),
                      ),
                    ),
                  ),
                   SizedBox(height: 17,),
                  Container(
                    width: 335,
                  
                    child: TextField(
                     obscureText: man[cnt],
                      controller: d,
                       
                      decoration: InputDecoration(
                        fillColor: Color(0xffF7F7F9),
                        filled: true,
                      
                        suffixIcon: IconButton(onPressed:  () {
                          name();
                        }, icon:ikon[cnt],),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none
                          
                        ),
                        
                        errorText: k,
                        
                         errorStyle: TextStyle(fontSize: 14),
                        
                      ),
                      
                    ),
                  ),
                  
                 
                  SizedBox(height: 35,),
                  InkWell(
                    onTap: () {
                      setState(() {
                        if(d.text.length >= 8){
                          Navigator.push(context,
                           MaterialPageRoute(builder: (context) => Sighin(),),
                           
                           );
                            k="";
                        }
                        else{
                          k="Password must be 8 character";
                          
                        }
                      });
                    },
                    child: Center(
                    child: Container(
                      alignment: Alignment.center,
                      width: 335,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Color(0xff53B175),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: 
                      Text("Sign Up",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
                    ),
                                    ),
                  ),
                ],
              ),
              SizedBox(height: 18,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have an account?  ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff707B81)),),
                  TextButton(onPressed: () {
                    
                  }, child: Text("Sign in",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Color(0xffFF7029)),)),
                ],
              ),
              SizedBox(height: 5,),
              Center(
                child: Text("Or connect",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff707B81)),),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 160,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("images/Group 332.png"),
                    Image.asset("images/Group 334.png"),
                    Image.asset("images/Group 333.png"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}