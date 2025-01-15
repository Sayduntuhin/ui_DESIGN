import 'package:flutter/cupertino.dart';

class Userprovider with ChangeNotifier {
  String? _name;
  String? _email;
  String? _imageURL;

  String? get name => _name;
  String? get email => _email;
  String? get imageURL => _imageURL;

  void signup(String name,String email,String imageURL,String password){

    _name = name;
    _email = email;
    _imageURL = imageURL;
    notifyListeners();
  }
bool login(String email, String password){

    if (_email == email) {
      return true;
    } else {
      return false;
    }


}


}