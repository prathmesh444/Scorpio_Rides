
import 'dart:core';
import 'package:flutter/material.dart';



class Detail extends StatefulWidget {
  Map<String,dynamic> data;
  Detail(
  this.data,
      {Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState(data);
}

class _DetailState extends State<Detail> {
  Map<String,dynamic> data;
  _DetailState(this.data);
  
  
  @override
  Widget build(BuildContext context) {
    DateTime dt = data['Vehicle details']['Start date'].toDate();
    String date = " ${dt.day}/${dt.month}/${dt.year}";
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 25,horizontal: 18),
        padding: const EdgeInsets.all(25),
        child: Card(
          color: Colors.green,
          elevation: 15,
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("FirstName : ${data['FirstName']}",
                    style: const TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("LastName : ${data['LastName']}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("Phone Number : ${data['Phone Number']}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("Email : ${data['Email_Id']}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("Date of Birth : ${data['DOB']}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("Driving Licence : ${data['Driving_licence']}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("Passport Number : ${data['Passport Number']}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("Vehicle Make : ${data['Vehicle details']['Make']}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("Vehicle Colour : ${data['Vehicle details']['Model']}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("VIN number : ${data['Vehicle details']['VIN number']}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("Engine Number : ${data['Vehicle details']['Engine number']}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("Registration Number : ${data['Vehicle details']['Registration number']}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("Vehicle Colour : ${data['Vehicle details']['Vehicle colour']}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("Number of Weeks : ${data['Vehicle details']['Number of weeks']}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("Start Date :$date",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
