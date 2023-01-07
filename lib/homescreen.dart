import 'package:beautyparlourapp/detailscreen.dart';
import 'package:beautyparlourapp/loginscreen.dart';
import 'package:beautyparlourapp/profile.dart';
import 'package:flutter/material.dart';

const stylistData = [
  {
    'stylistName':'Mackell',
    'parlourName':'naturals',
    'rating':'4.6',
    'rateAmount':'50',
    'imgUrl':'assets/stylist1.jpeg',
    'bgColor':Color.fromARGB(244,150,180, 123),
},
{
  'stylistName':'Joyal',
    'parlourName':'greentrends',
    'rating':'4.8',
    'rateAmount':'80',
    'imgUrl':'assets/stylist2.jpeg',
    'bgColor':Color.fromARGB(255, 150, 190, 223),
},
{
  'stylistName':'Iyraa',
    'parlourName':'beautypark',
    'rating':'4.9',
    'rateAmount':'90',
    'imgUrl':'assets/stylist3.jpeg',
    'bgColor':Color.fromARGB(255, 190, 151, 125),
},
];
class HomeScreen extends StatefulWidget {
  
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color.fromARGB(255, 44, 6, 179),
body: SingleChildScrollView(
  child: SafeArea(child: Column(
    children: <Widget>[
      Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children:<Widget> [
        IconButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));  
        }, icon: Icon(Icons.arrow_back_ios,
        size: 30,
        color: Color.fromARGB(255, 241, 190, 190),)),
        IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),));
        }, icon:Icon(Icons.menu,
        size: 30,
        color: Color.fromARGB(255, 199, 108, 108),)
        ),
         ], 
      ),
      ),
     SizedBox(
      height: 30,
     ), 
     Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(50),
        ),
      ),
      child: Padding(padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          SizedBox(height: 50,),
          Text("Beauty & Spa",
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 24),
          ),
          StylistCard(stylistData[0]),
          StylistCard(stylistData[1]),
          StylistCard(stylistData[2]),
        ],
      ),),
     )
    ],
  )),
),
    );
  }
}
class StylistCard extends StatelessWidget {

final stylist;
StylistCard(this.stylist);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/4-20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: stylist['bgColor'],
      ),
      child:Stack(
        children:<Widget> [
          Positioned(
            top: 20,
            right: -60,
            child: Image.asset(stylist['imgUrl'],
            width: MediaQuery.of(context).size.width*0.60,
            ),
            ),
            Padding(padding: EdgeInsets.only(top: 40,left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(stylist['stylistName'],
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),),
                SizedBox(
                  height: 5,
                ),
                Text(
                  stylist['parlourName'],
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children:<Widget> [
                    Icon(Icons.star,
                    size: 16,
                    color: Colors.amber,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(stylist['rating'],
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(stylist)));
                },
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text('View profile',
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
                ),
              ],
            ),)
        ],
      ),
    );
  }
}