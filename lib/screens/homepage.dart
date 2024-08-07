import 'dart:math';

import 'package:apiproject/api/api.dart';
import 'package:apiproject/provider/user_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/user.dart';
import '../widget/user_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userprovider = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Users',
        style: TextStyle(fontWeight: FontWeight.bold),)
        ,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: userprovider.isLoading
            ? Center(child: CircularProgressIndicator())
            : userprovider.errorMessege != null
                ? Center(child: Text(userprovider.errorMessege!))
                : ListView.builder(
                    itemCount: userprovider.users.length,
                    itemBuilder: (context, index) {
                      User user = userprovider.users[index];
                      int n = Random().nextInt(4) + 1;
                      return User_card(
                        imagePath: 'assets/images/${n}.png',
                        user: user,
                      );
                    }),
      ),
    );
  }
}
