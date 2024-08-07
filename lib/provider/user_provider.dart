



import 'package:flutter/material.dart';

import '../api/api.dart';
import '../models/user.dart';

class UserProvider extends ChangeNotifier{
  List<User> users =[];
  
  bool isLoading = false;

  String? errorMessege;

  Api _api = Api();


  Future <void> fetchusers() async{
    
  isLoading = true;
  errorMessege = null;
   notifyListeners();

   try{
   users = await _api.getUsers();
   } catch(e){
    errorMessege = e.toString(); 
  } finally{
   isLoading = false;
   notifyListeners();
  }

}}