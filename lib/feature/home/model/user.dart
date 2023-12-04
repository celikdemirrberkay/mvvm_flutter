import 'package:flutter/material.dart';

@immutable
final class User {
  const User({
    required this.phone,
    required this.website,
    required this.id,
    required this.name,
    required this.username,
    required this.email,
  });
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      phone: json['phone'].toString(),
      website: json['website'].toString(),
      name: json['name'].toString(),
      username: json['username'].toString(),
      email: json['email'].toString(),
      id: json['id'] as int,
    );
  }

  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;

  Map<String, dynamic> toJson() => {
        'phone': phone,
        'website': website,
        'id': id,
        'name': name,
        'username': username,
        'email': email,
      };
}
