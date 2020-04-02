import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeEvents extends StatefulWidget {
  HomeEvents({Key key}) : super(key: key);

  @override
  _HomeEventsState createState() => _HomeEventsState();
}

class _HomeEventsState extends State<HomeEvents> {

  @override
  Widget build(BuildContext context) {
     double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth= MediaQuery.of(context).size.width;
    return WillPopScope(
       onWillPop: (){
       Navigator.of(context).pop();
      },
      child:Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.white,
          leading: FlatButton(child: Icon(Icons.arrow_back_ios,),onPressed: (){
                                    Navigator.of(context).pop();
                                  },),
          title: Text("Events",style: GoogleFonts.varelaRound(textStyle: TextStyle(color:Colors.black,fontWeight: FontWeight.bold),)),
          
        ),
        body: ListView(
          
          children: <Widget>[
            SizedBox(height: screenHeight*0.03,),
             Padding(padding:EdgeInsets.only(left: 10),child: Text("Upcoming Events",style: GoogleFonts.openSans(textStyle:TextStyle(fontWeight: FontWeight.w700,fontSize: 25)),textAlign: TextAlign.left,)),
            SizedBox(height: screenHeight*0.03,),
            Container(
              height: screenHeight*0.4,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
           itemBuilder: (c, i){
             return Card(
                   margin: EdgeInsets.only(left: 7),
                   elevation: 5.0,
                   
                   
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Container(
                         decoration: new BoxDecoration(
                           
                           image:DecorationImage(fit: BoxFit.cover,image: CachedNetworkImageProvider(title[i].myimage))
                         
                         ),
                         width: screenWidth*0.9,
                         height: screenHeight*0.27,
                         
                       ),
                       SizedBox(height: screenHeight*0.006,),
                       Padding(padding:EdgeInsets.symmetric(horizontal:10,vertical: 5),child: Text(title[i].myheading,style: GoogleFonts.openSans(textStyle:TextStyle(fontSize: 20.0,fontWeight: FontWeight.w800)),textAlign: TextAlign.left)),
                       Padding(padding: EdgeInsets.symmetric(horizontal: 10,),child:Text(title[i].mydescription,style:GoogleFonts.varelaRound()))
                     ],
                   ),
                 );
           },
           itemCount: title.length,
              )
            ),
            SizedBox(height: screenHeight*0.02,),
             Padding(padding:EdgeInsets.only(left: 10),child: Text("Past Events",style: GoogleFonts.openSans(textStyle:TextStyle(fontWeight: FontWeight.w700,fontSize: 25)),textAlign: TextAlign.left,)),
            SizedBox(height: screenHeight*0.04,),
            Container(
              height: screenHeight*0.4,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
           itemBuilder: (c, i){
             return Card(
                   margin: EdgeInsets.only(left: 7),
                   elevation: 5.0,
                   
                   
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Container(
                         decoration: new BoxDecoration(
                           
                           image:DecorationImage(fit: BoxFit.cover,image: CachedNetworkImageProvider(title[i].myimage))
                         
                         ),
                         width: screenWidth*0.9,
                         height: screenHeight*0.27,
                         
                       ),
                       SizedBox(height: screenHeight*0.006,),
                       Padding(padding:EdgeInsets.symmetric(horizontal:10,vertical: 5),child: Text(title[i].myheading,style: GoogleFonts.openSans(textStyle:TextStyle(fontSize: 20.0,fontWeight: FontWeight.w800)),textAlign: TextAlign.left)),
                       Padding(padding: EdgeInsets.symmetric(horizontal: 10,),child:Text(title[i].mydescription,style:GoogleFonts.varelaRound()))
                     ],
                   ),
                 );
           },
           itemCount: title.length,
              )
            ),
          ],
        ),
      )
    );
  }
}

class Titles {
 
  String myheading;
  String mydescription;
  String url;
  String myimage;

  Titles(
    {
     
      this.myheading,
      this.mydescription,
      this.url,
      this.myimage
    }
  );
  Titles.fromJson(Map<String, dynamic> json) {
    
    myheading = json['myheading'];
    mydescription = json['mydescription'];
    url=json['url'];
    myimage = json['myicon'];
  }
Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
   
    data['myheading']=this.myheading;
    data['mydescription']=this.mydescription;
    data['url']=this.url;
    data['myimage']=this.myimage;
    return data;
  }
}

List<Titles> title=[
 
   
  Titles(
    
    mydescription: "Speaker - Mr. Saurabh Thakur",
    myheading: "WORKSHOP ON GSOC",
    url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/gsocS_poster.jpg",
    myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/gsocS.jpg',

  ),
  Titles(
   
    mydescription: "Speaker - Mr.Yashank",
    myheading: "GITHUB WORKSHOP",
    url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/github_poster.jpg",
    myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/github.jpg',

  ),
  Titles(
    
    mydescription: "Speaker - Mr. Saurabh Thakur",
    myheading: "TALK ON WEB TECHNOLOGIES",
     url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/Web_poster.jpg",
    myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/webtech.jpg',

  ),
  Titles(
     
    mydescription: "Oraganizer - Chitkara University",
    myheading: "OCTAHACKS 2.0",
    url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/octahacks2_poster.jpg",
    myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/octahacks2.jpg',

  ),
  
  Titles(
    
    mydescription: "Speaker - Mr.Kamal vaid",
    myheading: "GOOGLE I/O EXTENDED 2019",
     url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/Extended_poster.jpg",
    myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/Extended.jpg',

  ),
  Titles(
    
    mydescription: "Organiser- Chitkara university",
    myheading: "CODE CHAMP, S4 ",
     url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/cChamp_poster.jpg",
    myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/cChamp.jpg',

  ),
  
  Titles(
    
    mydescription: "Speaker - Mr. Saurabh Thakur",
    myheading: "GSOC Workshop",
    url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/gsocM_poster.jpg",
   myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/gsocM.jpg',

  ),
  
  
   Titles(
    
    mydescription: "Speaker - Mr. Aditya Agarwal",
    myheading: "KOTLIN EVERYWHERE",
     url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/kotlin_poster.jpg",
    myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/kotlin.jpg',

  ),
  
];