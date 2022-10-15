import 'dart:core';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:scorpio_rides/Detailing_Class.dart';


class View extends StatefulWidget {
  View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {


  @override
  Widget build(BuildContext context) {
    try {
      return Scaffold(
        appBar: AppBar(backgroundColor: Colors.green,),
        body: StreamBuilder(
              stream: FirebaseFirestore.instance.collection("Users").snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Text('Something went wrong');
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Text("Loading");
                }
                return ListView(
                  padding: EdgeInsets.all(10),
                  children: snapshot.data!.docs.map((
                      DocumentSnapshot document) {
                    Map<String, dynamic> data = document.data()! as Map<
                        String,
                        dynamic>;
                    return ListTile(
                      style: ListTileStyle.list,
                        leading: const Icon(Icons.account_circle_rounded),
                        trailing: const Text(
                          "View Details",
                          style: TextStyle(color: Colors.blue, fontSize: 13),
                        ),
                        title: Text(data['FirstName'],style: TextStyle(color: Colors.black,fontSize: 19),),
                        subtitle: Text(data['LastName'],style: TextStyle(color: Colors.black54,fontSize: 16),),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Detail(data)),
                        );
                      },
                    );
                  }).toList()
                  );
              }),
      );
    }
    catch(e){
      return Container(
        alignment: Alignment.center,
        child: Text("SERVER BUZY",style: TextStyle(
          fontSize: 30
        ),),
      );
    }
  }




}

