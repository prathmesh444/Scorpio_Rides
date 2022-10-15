import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:scorpio_rides/main.dart';
import 'firebase_options.dart';
import 'package:intl/intl.dart';
import 'Customer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Create extends StatefulWidget {
  const Create({Key? key}) : super(key: key);
  @override
  State<Create> createState() => _CreateState();

}

class _CreateState extends State<Create> {

  Customer customer = Customer();
  Vehicle vehicle = Vehicle();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Customer_details(),
            Vehicle_details(),
            Container(
              padding: const EdgeInsets.all(14),
              child: SizedBox(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height / 12,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width / 1.8,
                  child: ElevatedButton(
                      onPressed: submit,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          side: const BorderSide(width: 2, color: Colors.white),
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.all(6)
                      ),
                      child: const Text("Submit", style: TextStyle(
                          fontSize: 20.0, color: Colors.white)))
              ),
            ),
          ],
        )
    );
  }

  Widget Customer_details() {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 12,
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 5,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(width: 2, color: Colors.white),
                      padding: const EdgeInsets.all(6)
                  ),
                  child: const Text("< Back", style: TextStyle(
                      fontSize: 16.0, color: Colors.lightBlue))),
            ),

            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: Text(
                    'Enter Customer Details',
                    style: GoogleFonts.satisfy(
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                      fontSize: 35,
                    )
                )
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: customer.firstName,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'First Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: customer.lastName,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Last Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: customer.email,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email Id',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: customer.date_of_birth,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Date of birth',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(

                controller: customer.Driving_Licence,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Driving Licence',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(

                controller: customer.Passport,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Passport Number',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(

                controller: customer.Phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(

                controller: customer.Address,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Address',
                ),
              ),
            ),
          ],
        )
    );
  }

  Widget Vehicle_details() {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[

            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: Text(
                    'Enter Vehicle Details',
                    style: GoogleFonts.satisfy(
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                      fontSize: 35,
                    )
                )
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: vehicle.make,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Make',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(

                controller: vehicle.model,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Model',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(

                controller: vehicle.engine_Number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Engine Number',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(

                controller: vehicle.VIN_number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'VIN Number',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(

                controller: vehicle.registration_no,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Registration Number',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(

                controller: vehicle.vehicle_Colour,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Vehicle Colour',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(

                maxLength: 10,
                controller: vehicle.Start_date,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Start date, format: yyyy-MM-dd',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(

                controller: vehicle.no_of_weeks,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Total Number of weeks',
                ),
              ),
            ),
          ],
        )
    );
  }

  void submit() async {
    var database = FirebaseFirestore.instance;
    String firstName = customer.firstName.text;
    String lastName = customer.lastName.text;
    String email = customer.email.text;
    String date_of_birth = customer.date_of_birth.text;
    String Driving_Licence = customer.Driving_Licence.text;
    String Passport = customer.Passport.text;
    String Phone = customer.Phone.text;
    String Address = customer.Address.text;


    String make = vehicle.make.text;
    String model = vehicle.model.text;
    String VIN_number = vehicle.VIN_number.text;
    String engine_Number = vehicle.engine_Number.text;
    String registration_no = vehicle.registration_no.text;
    String vehicle_Colour = vehicle.vehicle_Colour.text;
    int no_of_weeks = int.parse(vehicle.no_of_weeks.text);
    String date = "${vehicle.Start_date.text} 12:00:00";

    DateTime Start_date = DateFormat("yyyy-MM-dd hh:mm:ss").parse(date);
    final user = <String, dynamic>{
      "FirstName": firstName,
      "LastName": lastName,
      "Email_id": email,
      "Phone Number": Phone,
      "DOB": date_of_birth,
      "Driving_licence": Driving_Licence,
      "Passport Number": Passport,
      "Address": Address,
      "Vehicle details": {
        "Make": make,
        "Model": model,
        "VIN number": VIN_number,
        "Engine number": engine_Number,
        "Registration number": registration_no,
        "Vehicle colour": vehicle_Colour,
        "Number of weeks": no_of_weeks,
        "Start date": Start_date,
      }
    };
    database.
    collection("Users").
    doc("${firstName} ${lastName}").
    set(user).onError((e, _) =>
        Fluttertoast.showToast(
            msg: "Error: $e, Try again",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.yellow
        )
    );
    DateTime limitdate = Start_date.add(Duration(days: 7 * no_of_weeks));
    Timestamp limitTimeStamp = Timestamp.fromDate(limitdate);

    DateTime new_start_date = Start_date.subtract(Duration(days: 1));

    for (int i = 1; i <= no_of_weeks; i++) //Weekly reminder
        {
      DateTime mydate = new_start_date.add(Duration(days: 7 * i));
      Timestamp myTimeStamp = Timestamp.fromDate(mydate);
      try {
        database
            .collection("\${param:QUEUE_COLLECTION}")
            .add({
          "state": "PENDING",
          // IMPORTANT! Omitting this field will prevent the scheduled write from being picked up.
          "collection": "mail",
          // only if you didn't specify a TARGET_COLLECTION
          "data": {
            "to": email,
            "message": {
              "subject": "Payment Reminder from Scorpio Rides",
              "text": "Dear ${firstName},\nYour weekly payment is due tommorrow.\n\nRegards,\nScorpio Rides",
            },
            "deliverTime": myTimeStamp,
            "invalidAfterTime:": limitTimeStamp,
          }
        });
      }
      catch (e) {
        Fluttertoast.showToast(
            msg: "Error: $e, Try again",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.yellow
        );
      }
    }

    for (int i = 1; i <= no_of_weeks/4; i++) //Monthly Reminder
          {
          DateTime date = new_start_date.add(Duration(days: (7*4*i) ));
          Timestamp monthlyTime = Timestamp.fromDate(date);
          try {
            database
                .collection("\${param:QUEUE_COLLECTION}")
                .add({
              "state": "PENDING",
              // IMPORTANT! Omitting this field will prevent the scheduled write from being picked up.
              "collection": "mail",
              // only if you didn't specify a TARGET_COLLECTION
              "data": {
                "to": email,
                "message": {
                  "subject": "Insurance Reminder from Scorpio Rides",
                  "text": "Dear ${firstName},\nYour Car Insurance is due tomorrow\nThank you,\nRegards,\nScorpio Rides",
                },
                "deliverTime": monthlyTime,
                "invalidAfterTime:": limitTimeStamp,
              }
            });
          }
          catch (e) {
            Fluttertoast.showToast(
                msg: "Error: $e, Try again",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.yellow
            );
          }
        }
    Navigator.pop(
      context,
      MaterialPageRoute(builder: (context) => const Create()),
    );
  }
  }

