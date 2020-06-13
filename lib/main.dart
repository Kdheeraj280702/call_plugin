import 'package:flutter/material.dart';
import 'package:catalog/black.dart';
import 'ironman.dart';
import 'package:catalog/thor.dart';
import 'package:catalog/chris.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes:{
      '/': (context) => MyApps(),
      '/chris': (context) => ChrisApp(),
      '/second': (context) => ThorApp(),
      '/black': (context) => BlackApp(),
      '/iron': (context) => IronApp(),
    },
  ));
}
class MyApps extends StatefulWidget {
  @override
  _MyAppsState createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "AVENGERS CATALOG",

            style: TextStyle(
              letterSpacing: 4,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'SourceSansPro',
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.grey[700],
        padding: EdgeInsets.all(10),
        child: ListView(

          children: <Widget>[
            Container(
              child: Image(
                image: AssetImage('images/2.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.black54,

                child: ListTile(
                  onTap: (){
                    Navigator.pushNamed(context,'/chris');
                  },

                  title: Center(child: Text("CHRIS EVANS",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 2,),)),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text('CAPTAIN AMERICA',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,letterSpacing: 5,color: Colors.white,),),),
                  ),
                ),
              ),
            ),
            Container(
              child: Image(
                image: AssetImage('images/1.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.black54,

                child: ListTile(
                  onTap: (){
            Navigator.pushNamed(context,'/iron');
                  },

                  title: Center(child: Text("ROBERT DOWNEY JR.",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 2,),)),

                  subtitle: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text('IRONMAN',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,letterSpacing: 5,color: Colors.white,),),),
                  ),
                ),
              ),
            ),
            Container(
              child: Image(
                image: AssetImage('images/3.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.black54,

                child: ListTile(
                  onTap: (){
                    Navigator.pushNamed(context,'/second');
                  },
                  title: Center(child: Text("CHRIS HEMSWORTH",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1.5,color: Colors.white,),),),
                  subtitle:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text('URUMULA DHORA',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,letterSpacing: 5,color: Colors.white,),),),
                  ),
                ),
              ),
            ),
            Container(
              child: Image(
                image: AssetImage('images/4.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.black54,

                child: ListTile(
                onTap: (){
                  Navigator.pushNamed(context,'/black');
                },

                  title: Center(child: Text("SCARLET",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 2,),)),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text('BLACK WIDOW',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,letterSpacing: 5,color: Colors.white,),),),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

