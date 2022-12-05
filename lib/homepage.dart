import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import './models/team.dart';

class HomePage extends StatelessWidget {
  // List<Person> people = [];

  // Future getTeams() async {
  //   var response =
  //       await http.get(Uri.parse('http://192.168.1.91:1415/api/Student'));
  //   var jsonData = jsonDecode(response.body);
  //   print(response.body);

  //   for (var per in jsonData) {
  //     final team = Person(per['name'], per['address']);
  //     people.add(team);
  //   }

  //   print(people.length);

  //   print(people);
  // }

  Future<http.Response> Person() async {
    return http.post(Uri.parse('http://192.168.1.91:1415/api/Student'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=utf-8',
        },
        body: jsonEncode(
            <String, String>{'name': 'rajib', 'address': 'kupondole'}));
  }

  @override
  Widget build(BuildContext context) {
    // getTeams();
    Person();
    return Scaffold();
  }
}
