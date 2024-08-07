
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/user.dart';

class Api { 
  Future<List<User>> getUsers() async{

  String url = "https://jsonplaceholder.typicode.com/users";

  var response = await http.get(Uri.parse(url));

  if (response.statusCode==200){
   List<dynamic> data= json.decode(response.body);
   return data.map((json)=> User.fromJson(json)).toList();
   } else{
    throw Exception('fail to laod');
   }
 }
}