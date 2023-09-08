import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/auth_controller.dart';
import 'package:login_signup/login_page.dart';

import 'homepage.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  TextEditingController? mail=TextEditingController();
  TextEditingController? passw=TextEditingController();
  List images=[
    "f.png",
    "g.png",
     "t.png"
  ];

  bool pass=true;
  var icon =Icon(Icons.visibility_off);
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: w,
            height: h*0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/signup.png'),
                  fit: BoxFit.cover
              ),
            ),
            child: Stack(
              children: [
                SizedBox(height: h*0.2,),
                Positioned(
                  top: h*0.18,
                  left: w*0.35,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white70,
                    backgroundImage: AssetImage('assets/images/profile.png',),
                  ),
                )
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top:30,left: 20,right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: h*0.03,),
                Container(

                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            offset: Offset(1, 1),
                            spreadRadius: 7,
                            color: Color(0xff9933).withOpacity(0.2)
                        )
                      ]
                  ),
                  child: TextFormField(
                    controller: mail,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        prefixIcon: Icon(Icons.email,color: Color(0xffff6633),),
                        labelText: "Email",
                        hintText: "Enter Email"
                    ),
                  ),
                ),
                SizedBox(height: h*0.05,),
                Container(

                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            offset: Offset(1, 1),
                            spreadRadius: 7,
                            color: Color(0xff9933).withOpacity(0.2)
                        )
                      ]
                  ),
                  child: TextFormField(
                    controller: passw,
                    obscureText: pass,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        labelText: "Password",
                        hintText: "Enter password",
                        prefixIcon: Icon(Icons.password,color:  Color(0xffff6633),),
                        suffixIcon: IconButton( icon:icon,color: Color(0xffff6633),onPressed: (){
                          setState(() {
                            pass=!pass;
                            if(pass==false)
                              icon=Icon(Icons.visibility);
                            else if(pass)
                              icon=Icon(Icons.visibility_off);
                          });
                        }

                        )
                    ),
                  ),
                ),
                SizedBox(height: h*0.02,),

                Center(
                  child: Container(
                    width: w*0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffff6633),
                    ),
                    child: TextButton(onPressed: (){
                      AuthController.instance.register(mail!.text.trim(), passw!.text.trim());
                    },
                        child: Text("Sign Up",style: TextStyle(color: Colors.white),)
                    ),
                  ),
                ),
                SizedBox(height: h*0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do you have account? ",style: TextStyle(color: Colors.grey[500]),),
                    InkWell(
                      child: Text("Sign in",
                        style: TextStyle(color:Color(0xffff6633)),)
                      ,onTap: ()=>Get.to(()=>LoginPage()),)
                  ],
                ),
                SizedBox(height:h*0.05),
                Center(child: Text("SignUp using a follwing method",style: TextStyle(color: Colors.grey[500]),)),
                SizedBox(height:h*0.01),
                Center(
                  child: Wrap(
                    children: List.generate(images.length, (index) {
                      return  Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: (){},
                          child: CircleAvatar(
                                      radius: 30,
                                       backgroundColor:Color(0xffff6633).withOpacity(0.3),
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundImage: AssetImage('assets/images/'+images[index]),
                                      ),
                                    ),
                        ),
                      );

                    } ),
                  ),
                )

              ],
            ),
          ),

        ],
      ),
    );
  }
}
