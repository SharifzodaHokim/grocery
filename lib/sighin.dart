import 'package:exsam2/bottomnavig.dart';

import 'package:exsam2/sighup.dart';

import 'package:flutter/material.dart';


class Sighin extends StatefulWidget {
  const Sighin({super.key});

  @override
  State<Sighin> createState() => _SighinState();
}

class _SighinState extends State<Sighin> {
TextEditingController b = TextEditingController(text: "");
TextEditingController d = TextEditingController(text: "");
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
              SizedBox(height: 150,),
              Center(
                child: Column(
                  children: [
                    Text("Sign in now",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600),),
                    SizedBox(height: 10,),
                    Text("Please sign in to continue our app",style: TextStyle(fontSize: 16,color: Color(0xff7D848D),fontWeight: FontWeight.w400),),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 35,),
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
                   SizedBox(height: 20,),
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
                  
                 
                  SizedBox(height: 40,),
                  InkWell(
                    onTap: () {
                      setState(() {
                        if(d.text == a){
                          Navigator.push(context,
                           MaterialPageRoute(builder: (context) => Bottomnavig(),),
                           
                           );
                            k="";
                        }
                        else{
                          k="Forget Password?";
                          
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
                      Text("Sign In",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
                    ),
                                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have an account?  ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff707B81)),),
                  TextButton(onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder:
                     (context) => Sighup(),
                    )
                    );
                  }, child: Text("Sign up",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Color(0xffFF7029)),)),
                ],
              ),
              SizedBox(height: 5,),
              Center(
                child: Text("Or connect",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff707B81)),),
              ),
              Container(
                margin: EdgeInsets.only(top: 35),
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