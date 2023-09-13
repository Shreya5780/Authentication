import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:melody/screens/auth_conf.dart';
import 'package:melody/screens/signUp.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

// *** firebase **** 
// /* for web application


  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAYPOnhuabQd5HCxuRxXrldIA_i8b4h6nI",
      appId: "1:1017776526217:web:6eab35641c622089fd8758", 
      messagingSenderId: "1017776526217",
      projectId: "spotifyclone-17b87",
        )
  );
  // */
     Get.put(AuthController());

  // await Firebase.initializeApp().then((value)=>Get.put(AuthController()));


  // ignore: prefer_const_constructors
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.black,
  ));

  //  Get.put(AuthController());
  // ignore: prefer_const_constructors
  runApp(GetMaterialApp(
    title: 'Spotify Clone',
    debugShowCheckedModeBanner: false,//to remove debug banner
    home:  const SignUpPage())); //connect with signup page
    
    //connection to app.dart req
  //or CuppertinoApp()coming from flutter material imported. jo bhi widget daaloge it will be on top
}
//widget is a dart class
//MyApp