
import 'package:flutter/widgets.dart';

class User with ChangeNotifier{
  bool _status = false;

  get status => _status;

  set status(status){
    _status = status;
    notifyListeners();
  }
}