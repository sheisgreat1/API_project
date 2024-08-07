import 'package:apiproject/models/user.dart';
import 'package:apiproject/screens/user_detail.dart';
import 'package:flutter/material.dart';


class User_card extends StatelessWidget {
  final String imagePath;
  final User user;

  const User_card({
    super.key,
    required this.user,
    required this.imagePath
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10,top: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 2.5,
            color:  Color.fromARGB(255, 188, 70, 231)),
        boxShadow: [
         BoxShadow(
         color: Color.fromARGB(179, 96, 125, 139),
         offset: Offset(0,4),
         blurRadius: 6,
         spreadRadius: 3,
         )
        ]
        ,color: const Color.fromARGB(201, 0, 0, 0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              //height: 25,
              width: 20,
              padding: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.asset(imagePath),
              ),
            ),
            Column(
              children: [
                Text(
                  user.name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  user.email,
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                     ),
                )
              ],
              
            )
         , Container(
          height: 45,
           decoration: BoxDecoration(color:Color.fromARGB(255, 188, 70, 231)
           ,borderRadius:BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5),)
           ,
           )
           ,child: IconButton(
            onPressed:
            (
            ){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>UserDetail(user: user,imagePath: imagePath,))); } ,
           icon: Icon(Icons.arrow_forward_ios_rounded,),
           color: Color.fromARGB(255, 68, 0, 100),
           iconSize: 30 ,
           ) ,
          )],
        ),
      ),
    );
  }
}
