import 'package:flutter/cupertino.dart';

class IneStudent {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final int level;
  final String status;

  const IneStudent({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.level,
    required this.status,
  });
}