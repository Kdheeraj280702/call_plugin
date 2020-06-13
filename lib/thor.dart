import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

void main() {
  runApp(ThorApp());
}

class ThorApp extends StatefulWidget {
  @override
  _ThorAppState createState() => _ThorAppState();
}

class _ThorAppState extends State<ThorApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[500],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("images/3.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "CHRIS HEMSWORTH",
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
                "THE AVENGER",
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[100],
                  letterSpacing: 4,
                ),
              ),
              SizedBox(
                height: 30,
                width: 200,
                child: Divider(
                  color: Colors.red[300],
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
                      color: Colors.red[500],
                      size: 30,
                    ),
                    title: Text(
                      "+91-8374991328",
                      style: TextStyle(
                        color: Colors.red[500],
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
                      color: Colors.red[500],
                      size: 30,
                    ),
                    title: Text(
                      "knd12@iitbbs.ac.in",
                      style: TextStyle(
                        color: Colors.red[500],
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