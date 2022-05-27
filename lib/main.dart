// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

//import 'package:rounded_tabbar_widget/rounded_tabbar_widget.dart';
//import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

void main() {
  runApp(
    MaterialApp(home: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///Top Header
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Jhon Doe",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: IconButton(
                      icon: Icon(Ionicons.notifications_outline),
                      onPressed: () {
                        print('notification');
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            ///Title
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Where do\nYou Want to go?',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ),

            ///SEARCHBOX
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextField(
                  // style: TextStyle(backgroundColor: Colors.amberAccent),
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(
                      fontSize: 10.0,
                      color: Colors.grey.shade400,
                    ),
                    suffixIcon: Align(
                      alignment: Alignment(0.9, 0.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 35.0,
                      ),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),

            SizedBox(height: 13.0),

            ///Categories
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
            ),

            ///Categories Cards
            SizedBox(height: 2.0),
            Row(
              children: [
                ///Categories Card 1
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  child: Container(
                    //margin: EdgeInsets.symmetric(vertical: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    height: 70,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(4.0, 4.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0,
                          color: Colors.white,
                        )
                      ],
                    ),
                    child: Row(children: <Widget>[
                      Image.network(
                        'https://img.icons8.com/external-flat-design-circle/344/external-camp-camping-flat-design-circle.png',
                        height: 70,
                        width: 60,
                      ),
                      SizedBox(
                        width: 7.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 25, 0, 0),
                            child: Text(
                              'Camp',
                              style: TextStyle(
                                  fontSize: 17.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),

                ///Category Card 2
                Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    child: Container(
                      //margin: EdgeInsets.symmetric(vertical: 20),
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      height: 70,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(4.0, 4.0),
                            blurRadius: 10.0,
                            spreadRadius: 1.0,
                            color: Colors.white,
                          )
                        ],
                      ),
                      child: Row(children: <Widget>[
                        Image.network(
                          'https://img.icons8.com/external-victoruler-flat-victoruler/344/external-mountain-camping-victoruler-flat-victoruler.png',
                          //
                          height: 70,
                          width: 60,
                        ),
                        SizedBox(
                          width: 7.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                              child: Text(
                                'Mountain',
                                style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ]),
                    )),
              ],
            ),

            ///Top Trips
            SizedBox(height: 5.0),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Top Trips",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.keyboard_arrow_down),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(120, 0, 0, 0),
                    child: Text(
                      "Explore",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_right_sharp)),
                ],
              ),
            ),

            //Trip Card 1
            Row(
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Column(children: <Widget>[
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1496531693211-31c5234a5ea9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGZvcmVzdCUyMHRyYXZlbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'Sylhet Forest',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ]),
                ),

                ///CARD 2
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Column(children: <Widget>[
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dHJhdmVsJTIwaGQlMjBwaWN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'Zea Beach',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ]),
                ),
              ],
            ),

            //BOttom NAvigation Bar
            CustomNavigationBar(
              items: [
                CustomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text("Home"),
                ),
                CustomNavigationBarItem(
                  icon: Icon(Icons.location_on),
                ),
                CustomNavigationBarItem(
                  icon: Icon(Icons.lightbulb_outline),
                ),
                CustomNavigationBarItem(
                  icon: Icon(Icons.search),
                ),
                CustomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                ),
              ],
            )

            ///END
          ],
        ),
      )),
    ));
  }
}
