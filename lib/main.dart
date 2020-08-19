

import 'package:flutter/material.dart';

import 'Pages/startPage.dart';


void main (){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "Home",
    routes: {
      "Home": (context) => HomePage(),
      "Start": (context) => StartPage(),
    }

  ));
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: new Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
           image:   AssetImage('images/home.jpg'),
            fit: BoxFit.cover
          )
        ),

        child: new Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.4),
              ]
            )
          ),
          child:Padding(
            padding: const EdgeInsets.all(20.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new Text("Brand New Prespective",style: TextStyle(
                  color: Colors.white,fontSize: 40,
                  fontWeight: FontWeight.bold,),),
                SizedBox(height: 30,),
                new Text("Lets Stsrt with our summer collection.",textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
                SizedBox(height: 100,),

                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "Start");
                  },
                  child: new Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: new Center(
                      child:new Text("Get Started",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  child: new Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: new Center(
                        child:new Text("Create Account",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                    ),
                  ),
                ),
                SizedBox(height: 30,)
              ],
            ),
          ),

        ),

      ),
    );
  }
}
