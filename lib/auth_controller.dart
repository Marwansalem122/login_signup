import 'dart:math';
import'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:login_signup/homepage.dart';
import 'package:login_signup/login_page.dart';
import 'package:flutter/material.dart';
class AuthController extends GetxController{

  static AuthController instance=Get.find();
   late Rx<User?>_user;
   FirebaseAuth auth=FirebaseAuth.instance;

   void onReady(){
     super.onReady();
    _user= Rx<User?>(auth.currentUser );
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
}
_initialScreen(User? user){
     if(user==null){
       Get.offAll(()=>LoginPage());
     }else{
       Get.offAll(()=>HomePage(email:user.email.toString()));
     }
}
void register(String email,String password)async{
     try{
       await auth.createUserWithEmailAndPassword(email: email, password: password);
     }catch(e){
       Get.snackbar("About user", "About user",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
         titleText: Text("Acoount creation failed",style: TextStyle(color: Colors.white),),
         messageText: Text(e.toString(),style: TextStyle(color: Colors.white),)
       );
     }
}
void login(String email,String password)async{
     try{
       await auth.signInWithEmailAndPassword(email: email, password: password);
     }catch(e){
       Get.snackbar("About Login", "Login message",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
         titleText: Text("Login failed",style: TextStyle(color: Colors.white),),
         messageText: Text(e.toString(),style: TextStyle(color: Colors.white),)
       );
     }
}
void logout()async{
    await auth.signOut();
}
}