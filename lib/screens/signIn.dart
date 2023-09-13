import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:melody/screens/auth_conf.dart';
import 'package:melody/screens/signUp.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

     var emailController = TextEditingController();
    var passwordController = TextEditingController();  

    double w = MediaQuery.of(context).size.width;//size of width and height for container
    double h = MediaQuery.of(context).size.height;
    
    return Scaffold(
      backgroundColor: Colors.white,
      //add two container for email and password
      body: Column(
        children: [
          Positioned(
                top: 0,
                child: SvgPicture.asset(
                  'img/top.svg',
                  width: 400,
                  height: 150,
                )),
            const SizedBox(
              height: 50,
            ),


//create another container for which is main (take email, password)
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 20, right: 20),
            padding:  const EdgeInsets.symmetric(horizontal: 50), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const Text(
                //   "Hello", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                // ),
                // Text(
                //   "Sign into your account.", style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                // ),
                const SizedBox(height: 50,),
                Container( 
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: const Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2)
                      )
                    ]
                  ),
                  child : TextField(
                    controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: const Icon(Icons.email, color: Colors.deepOrangeAccent,),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 1.0
                      )
                    ),

                    //it enable to write the email in textfield
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1.0
                      )
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                  ),
                )
                ),


//second container for password
                const SizedBox(height: 20,),
                Container( 
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: const Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2)
                      )
                    ]
                  ),
                  child : TextField(
                    controller: passwordController,
                    obscureText: true,

                  decoration: InputDecoration(
                     hintText: "password",
                    prefixIcon: const Icon(Icons.password, color: Colors.deepOrangeAccent,),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 1.0
                      )
                    ),

                    //it enable to write the email in textfield
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1.0
                      )
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                  ),
                )
                ),

//forget password text
              const SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(child: Container(
                    child: Text(
                  "Sign into your account.", style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                ),
                  ))
                ],
              ),


              ],
            ),
          ),

//for sign in button design
        const SizedBox(height: 40,),

        /*
        sign in button work thay atyl add karvu
        declare var email and passcontroller

        controller: passwordController,
        obscureText: true,//only at passwod textfield
                    at text field of email and password


        GestureDetector(
    onTap: (){
      AuthController.instance.login(emailController.text.trim(), passwordController.text.trim());
    },
    */

// /* **with firebase****
   GestureDetector(
    onTap: (){
      AuthController.instance.login(emailController.text.trim(), passwordController.text.trim());
    },
    // */
     child: Container(
              width: w*0.5,
              height: h*0.08, 
   
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  image: AssetImage(
                    "img/btn.png"
                    ),
                    fit: BoxFit.cover
                  ),
              ),
             
             child:Center(
              child: Text(
                    "Sign In", style: TextStyle(fontSize: 36, color: Colors.grey[500], fontWeight: FontWeight.bold),
                  ),
             ) 
            ),
   ),


//dont' have accpount register text
              const SizedBox(height: 50,),

              SizedBox(height: w*0.08),
              RichText(text: TextSpan(

                text: "Don't have an account?",
                style: TextStyle(color: Colors.grey[500], fontSize: 20),
                
                children: [
                  TextSpan(
                text: "Create",
                style: const TextStyle(color: Colors.black, fontSize: 20),
                recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>const SignUpPage()),
//when we tap on create it redirect to the signup page
                  ),

                ],
              )
              )


        ],
      )
    );
  }
}