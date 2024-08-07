

import 'package:flutter/material.dart';

import '../models/user.dart';
import '../widget/infocard.dart';
import '../widget/textcard.dart';

class UserDetail extends StatelessWidget {
  final User user;
  final String imagePath;
  const UserDetail({required this.user , required this.imagePath
  ,super.key});
  

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ID: ${user.id}')
        ,centerTitle: true,
      )
     , body: Padding(
      padding:const EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            ClipRRect(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(imagePath),
          
            )
            ,Text(
                    '${user.name}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '@${user.username}',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  InfoCard(
                    title: 'email',
                    description: user.email,
                    icon: Icons.email,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children: [
                      TextCard(text: 'street', subtext: user.address['street'],
                      
                      ),
                      
                      TextCard(text: 'suite', subtext: user.address['suite']),
                     
                      TextCard(text: 'city', subtext: user.address['city']),
                      

                    ],
                  ),
                  InfoCard(
                    title: 'phone',
                    description: user.phone,
                    icon: Icons.phone,
                  ),
                  InfoCard(
                    title: 'website',
                    description: user.website,
                    icon: Icons.web,
                  ),
                  InfoCard(
                    title: 'company',
                    description: user.company['name'],
                    icon: Icons.email,
                  ),
          ],),
        ),
      ),
     
     ),
    );
  }
}