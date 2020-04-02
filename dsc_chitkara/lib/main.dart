import 'package:dsc_chitkara/aboutUs.dart';
import 'package:dsc_chitkara/events.dart';
import 'package:dsc_chitkara/resources.dart';
import 'package:dsc_chitkara/teampage.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: "Developer Student Clubs, Chitkara University",
      home: MyHome(),
      routes: <String, WidgetBuilder> {
    '/screen1': (BuildContext context) => EventPage(),
    '/screen2' : (BuildContext context) => AboutUs(),
    '/screen3' : (BuildContext context) => teampage(),
    '/screen4':  (BuildContext context) => resources(),
    
  },
    );
  }
}

class MyHome extends StatefulWidget {
  MyHome({Key key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

Future<bool> _onWillPop(){
  return showDialog(
    context: context,
    builder: (context) =>AlertDialog(
      title:Text("Are you sure"),
      content:Text("Do you want to Exit the App"),
      actions:<Widget>[
        FlatButton(onPressed: ()=> Navigator.of(context).pop(false), child: Text("No")),
        FlatButton(onPressed: ()=> exit(0), child: Text("Yes")),

      ]
    )
  )??
  false;
}

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
   double screenWidth = MediaQuery.of(context).size.width;
    return WillPopScope(
          onWillPop: _onWillPop,
          child: SafeArea(
             child: Scaffold(
             body: SingleChildScrollView(
             physics: BouncingScrollPhysics(),
             child: Column(
               
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: screenHeight*0.11,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Welcome to",style:GoogleFonts.varelaRound(textStyle:TextStyle(fontSize: 45,fontWeight: FontWeight.w900,color: Colors.grey.shade700,)))
                  ],
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 30),child: Image.asset("images/dsc.png",width: screenWidth*0.9,),),
                SizedBox(height: screenHeight*0.1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: screenHeight*0.16,
                      width: screenWidth*0.35,
                       decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)),color: Colors.red.shade100,),
                      child: FlatButton(
                          onPressed: (){},
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.event_available,size: 55,color: Colors.red),
                            Text("Events",style: GoogleFonts.varelaRound(textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: screenHeight*0.16,
                      width: screenWidth*0.35,
                       decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)),color: Colors.green.shade100,),
                      child: FlatButton(
                          onPressed: (){},
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.info,size: 55,color: Colors.green),
                            Text("About Us",style: GoogleFonts.varelaRound(textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight*0.04,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: screenHeight*0.16,
                      width: screenWidth*0.35,
                       decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)),color: Colors.blue.shade100,),
                      child: FlatButton(
                          onPressed: (){},
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.group,size: 55,color: Colors.blue),
                            Text("Team",style: GoogleFonts.varelaRound(textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: screenHeight*0.16,
                      width: screenWidth*0.35,
                       decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)),color: Colors.yellow.shade100,),
                      child: FlatButton(
                          onPressed: (){},
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.local_library,size: 55,color: Colors.yellow.shade700),
                            Text("Resources",style: GoogleFonts.varelaRound(textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight*0.055,),
                Text("Version 1.0.0"),
               
                
              ],
            ),
        )
      ),
          ),
    );
  }
}


class Titles {
  Color mycolor;
  String myheading;
  String mydescription;
  Icon myicon;
  String myroute;

  Titles(
    {
      this.mycolor,
      this.myheading,
      this.mydescription,
      this.myicon,
      this.myroute
    }
  );
  Titles.fromJson(Map<String, dynamic> json) {
    mycolor = json['mycolor'];
    myheading = json['myheading'];
    mydescription = json['mydescription'];
    myicon = json['myicon'];
    myroute = json['myicon'];
  }
Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mycolor']=this.mycolor;
    data['myheading']=this.myheading;
    data['mydescription']=this.mydescription;
    data['myicon']=this.myicon;
    data['myroute']=this.myroute;
    return data;
  }
}

List<Titles> title=[
  Titles(
    mycolor: Colors.green,
    mydescription: "  April-August 2020",
    myheading: "Upcoming Events",
    myicon: Icon(Icons.event,color: Colors.green,size:50),
    myroute: '/screen1',

  ),
  Titles(
     mycolor: Colors.red,
    mydescription: "  2019-2020",
    myheading: "Past Events",
    myicon: Icon(Icons.event,color: Colors.red,size:50),
    myroute: '/screen1',

  ),
  Titles(
     mycolor: Colors.blue,
    mydescription: "  To learn",
    myheading: "Resources",
     myicon: Icon(Icons.event,color: Colors.blue,size:50),
    myroute: '/screen4',

  ),
  Titles(
     mycolor: Colors.green,
    mydescription: "  2020-2021",
    myheading: "Our Team",
     myicon: Icon(Icons.group_work,color: Colors.green,size:50),
    myroute: '/screen3',

  ),
  Titles(
    mycolor: Colors.red,
    mydescription: "  Our Story",
    myheading: "About Us",
    myicon: Icon(Icons.info_outline,color: Colors.red,size:50),
   myroute: '/screen2',

  ),
];


