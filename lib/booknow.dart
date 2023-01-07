import 'package:flutter/material.dart';

class BooknowScreen extends StatefulWidget {
  const BooknowScreen({super.key});

  @override
  State<BooknowScreen> createState() => _BooknowScreenState();
}

class _BooknowScreenState extends State<BooknowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text("Book Now"),
        backgroundColor: Colors.pinkAccent,
       ),
       body: 
       
       GridView.builder(
        itemCount: 12,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2) ,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
child: Container(
  color: Colors.limeAccent,
),
            );
 }),
       
        );

  }
}