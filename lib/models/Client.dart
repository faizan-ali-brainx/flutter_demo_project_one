
import 'package:flutter/foundation.dart';

class Client{

  final String _id;
  final String _name;
  final String _phoneNumber;

  Client(this._id, this._name, this._phoneNumber);

  String get getId {
    return _id;
  }

  String get getName {
    return _name;
  }

  String get getPhoneNumber {
    return _phoneNumber;
  }

}