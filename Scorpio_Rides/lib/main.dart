import 'dart:core';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scorpio_rides/Create_customer.dart';
import 'package:scorpio_rides/View_users.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));

}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Image logo;


  @override
  void initState() {
    super.initState();

    logo = Image.asset("assets/images/new_logo.jpeg");

  }
  @override
  void didChangeDependencies() {
    precacheImage(logo.image, context);
    super.didChangeDependencies();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            logo,
            Flexible(
              flex: 1,
              child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height/11,
                            width: MediaQuery.of(context).size.width/1.4,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.green,
                                    side: const BorderSide(width:2, color:Colors.white),
                                    elevation: 6,
                                    shape: RoundedRectangleBorder( borderRadius : BorderRadius.circular(8)),
                                    padding: EdgeInsets.all(6)
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Create()),
                                  );
                                },
                                child: Text(
                                    "Add a new Customer",
                                    style: GoogleFonts.fuzzyBubbles(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                                )
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/11,
                          width: MediaQuery.of(context).size.width/1.4,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.green,
                                  side: BorderSide(width:3, color:Colors.white),
                                  elevation: 6,
                                  shape: RoundedRectangleBorder( borderRadius : BorderRadius.circular(10)),
                                  padding: EdgeInsets.all(6)
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => View()));
                              },
                              child:  Text(
                                  "View Customer Details",
                                  style: GoogleFonts.fuzzyBubbles(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white
                                  )
                              )
                          ),
                        ),
                      ]
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}


