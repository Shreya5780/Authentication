import 'package:melody/screens/home.dart';
import 'package:melody/screens/signUp.dart';
import 'package:melody/screens/signIn.dart';
import 'package:flutter/material.dart';
// import 'package:melody/api/mongo_api.dart';

//has stateful widget
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();//creates state, HERE DATA
}

class _MyAppState extends State<MyApp> { 

  //UI design code goes inside build
  @override
  Widget build(BuildContext context) {

    return Scaffold(//like a page
      backgroundColor: const Color.fromRGBO(164, 124, 177, 100), //94, 37, 93, 74, 29, 73
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(164, 124, 177, 100),

          // iconSize: 48,
        selectedItemColor: Colors.white24,//change the colour of text in bottom navigation.
        unselectedItemColor: Colors.white,

        //selectedFontStyle also there.
        // backgroundColor: Colors.black12,
        items: const [//one item has - icon and text + color and items should have min 2
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),

              label: 'Home'),
          //3
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.white), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books, color: Colors.white),
              label: 'Your Library')
        ],
    ),//items ka object=> home, search and lib<= items

// */
    );
  }
}
