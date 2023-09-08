import 'package:flutter/material.dart';
import 'package:login_signup/auth_controller.dart';
import 'package:login_signup/homepage.dart';
import 'package:login_signup/signup_page.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email =TextEditingController();
  TextEditingController passw2 =TextEditingController();
  bool pass=true;
  var icon =Icon(Icons.visibility_off);

  Widget build(BuildContext context) {

    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
       // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
             width: w,
            height: h*0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/loginimg.png'),
                fit: BoxFit.cover
              ),

            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            width: w,
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello",
                   style: TextStyle(
                     fontSize: h*0.07,
                     fontWeight: FontWeight.bold
                   ),
                ),
                Text("Sign into to your account",
                  style: TextStyle(
                      fontSize: h*0.04,
                      color: Colors.grey[300]
                  ),
                ),
                SizedBox(height: h*0.03,),
                Container(
                  
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        offset: Offset(1, 1),
                        spreadRadius: 7,
                        color: Color(0xff9933).withOpacity(0.2)
                      )
                    ]
                  ),
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      prefixIcon: Icon(Icons.email),
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
                        blurRadius: 10,
                        offset: Offset(1, 1),
                        spreadRadius: 7,
                        color: Color(0xff9933).withOpacity(0.2)
                      )
                    ]
                  ),
                  child: TextFormField(
                    controller: passw2,
                    obscureText: pass,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: "Password",
                      hintText: "Enter password",
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton( icon:icon,onPressed: (){
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(child: Text("Forget your password",style: TextStyle(color: Color(0xffff6633)),)
                      ,onTap: (){},)
                  ],
                ),
                SizedBox(height: h*0.05,),
                Center(
                  child: Container(
                    width: w*0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffff6633),
                    ),
                    child: TextButton(onPressed: (){
                      AuthController.instance.login(email.text.trim(), passw2.text.trim());}
                    , child: Text("Sign in",style: TextStyle(color: Colors.white),)
                    ),
                  ),
                ),
                SizedBox(height:h*0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have account? ",style: TextStyle(color: Colors.grey[500]),),
                    InkWell(
                      child: Text("Create",
                        style: TextStyle(color:Color(0xffff6633)),)
                      ,onTap: ()=>Get.to(()=>SignupPage()),)
                  ],
                )

              ],
            ),
          ),

        ],
      ),
    );
  }
}
