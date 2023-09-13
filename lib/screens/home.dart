import 'package:flutter/material.dart';
import 'package:melody/screens/auth_conf.dart';
class Home extends StatelessWidget {

  String email;
   Home({Key? key, required this.email}) : super(key: key);

  Widget createGrid(){
    return GridView.count(
      crossAxisCount: 1,
      children: const [],//here we will show different categories.(cols and rows)
    );

  }
  Widget createAppBar(String message){
    return AppBar(
      backgroundColor: Colors.transparent,//appbar is transparent
      elevation: 0.0,
      title: Padding(
        padding: const EdgeInsets.only(left: 50),
        child: Text(message),

      ),

      actions:const [ Padding(
    padding: EdgeInsets.only(right: 10),
    child: Icon(Icons.settings),
      )
    ]

    );
  }
  @override
  Widget build(BuildContext context) {

     double w = MediaQuery.of(context).size.width;//size of width and height for container
    double h = MediaQuery.of(context).size.height;

    return SafeArea(//content ko safe jagah pe dikhati hai
      child: Container(//iske andar sab ayega(a box is made on screen)8
        decoration: const BoxDecoration(//decoration is optional
          gradient: LinearGradient(colors: [
            Colors.black,
            Color.fromRGBO(74, 29, 73, 100)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)//here we are defining from where to where should gradient go
        ),//iske andar sab ayega(a box is made on screen)8
        child: Column(
          children: [//widget list
          createAppBar('Good morning'), 
          // ignore: prefer_const_constructors
          // SizedBox(height: 5.0)
          // ignore: prefer_const_constructors
          Text(
                  email, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),

          const SizedBox(height: 40,),

   GestureDetector(
    onTap: (){
      AuthController.instance.logout();
    },
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
                    "Sign Out", style: TextStyle(fontSize: 36, color: Colors.grey[500], fontWeight: FontWeight.bold),
                  ),
             ) 
            ),
   ),

        ],
        
        ),//we can add stop property above like stops: [0.1, 0.3], it will automatically set the colours there.


      )

      //wite email and welcome msg and handle logout
     



    );
  }
}

