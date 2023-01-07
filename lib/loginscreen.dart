import 'package:beautyparlourapp/homescreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
            children: [
              Center(
                child: Container(
                 height: 300,
                 width: 300,
                 decoration: const
                 BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/loginbeauty.jpeg"),
                  ),
                  ),
                 ),

                ),
              Padding(padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Padding(padding: EdgeInsets.only(left: 5.0),
                child: TextField(decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outline),
                  label: Padding(padding: EdgeInsets.only(left: 3.0),
                  child: Text("User Name",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),
                  ),),
                  labelStyle: TextStyle(color: Colors.black,),
                  hintText: "Your email address",
                  hintStyle: TextStyle(fontWeight: FontWeight.bold,),
                  border: InputBorder.none,
                ),),),
              ),),
               Padding(padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Padding(padding: EdgeInsets.only(left: 5.0),
                child: TextField(decoration: InputDecoration(
                  prefixText: '+91',
                  prefixIcon: Icon(Icons.phone),
                  label: Padding(padding: EdgeInsets.only(left: 3.0),
                  child: Text("Phone Number",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),
                  ),),
                  labelStyle: TextStyle(color: Colors.black,),
                  hintText: "Where can we reach you?",
                  hintStyle: TextStyle(fontWeight: FontWeight.bold,),
                  border: InputBorder.none,
                ),),),
              ),),
             
              const SizedBox(height: 20,),
              Padding(padding: const EdgeInsets.only(left: 6.0,right: 6.0),
              child: Container(
                decoration: 
                BoxDecoration(color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30.0),
                ),
                child: TextField(obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
suffixIcon: Icon(Icons.remove_red_eye),
label: Padding(padding: EdgeInsets.only(left:10.0),
child: Text("Password",
style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),
),
),
labelStyle: TextStyle(color: Colors.black,),
hintText: "No more than 8 characters",
hintStyle: TextStyle(fontWeight: FontWeight.bold,),
border: InputBorder.none,
),
                ),
              ),           
                ),
                const SizedBox(height: 10,),
                const Text("Not a Mamber? Create a New Account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                ),),
                ElevatedButton(onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),)); 
                }, child: Text("Login"))
            ],
          ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 235, 132, 166).withOpacity(0.9),
        // backgroundColor: Color.fromARGB(255, 197, 62, 13).withOpacity(0.7),
      ),
    );
    }
}
