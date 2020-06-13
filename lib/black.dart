import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';


void main() {
  runApp(BlackApp());
}

class BlackApp extends StatefulWidget {
  @override
  _BlackAppState createState() => _BlackAppState();
}

class _BlackAppState extends State<BlackApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("images/4.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "SCARLET JOHANSON",
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 25,
                    letterSpacing: 1.5,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 3,
                  ),
                ),
              ),
              Text(
                "THE BLACK WIDOW",
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                  letterSpacing: 4,
                ),
              ),
              SizedBox(
                height: 30,
                width: 200,
                child: Divider(
                  color: Colors.grey[700],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 15,horizontal: 30,),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    onTap: _callNumber,
                    leading: Icon(
                      Icons.phone,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text(
                      "+91-8374991328",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 15,horizontal: 30,),

                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text(
                      "knd12@iitbbs.ac.in",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_callNumber() async{
  const number = '8374991328'; //set the number here
  bool res = await FlutterPhoneDirectCaller.callNumber(number);
}