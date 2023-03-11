import 'package:flutter/material.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import 'activity_page.dart';
import 'about_us.dart';
import 'registration_page.dart';
import 'ngo_first_page.dart';
import 'ngo_second_page.dart';
import 'mentor_first_page.dart';
import 'mentor_second_page.dart';

class DonationPage extends StatefulWidget {
  @override
  _DonationPageState createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  List<String> selectedItems = [];

  final List<String> cities = [
    'Delhi',
    'Mumbai',
    'Kolkata',
    'Chennai',
    'Bangalore',
  ];

  String? selectedCity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donation Page'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      'Donate Now!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  Image(
                    image: NetworkImage(
                        "https://thumbs.dreamstime.com/b/box-school-office-supplies-sign-bright-blue-background-donation-concept-various-121751259.jpg"),
                  ),
                  SizedBox(height: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: selectedItems.contains('books'),
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  selectedItems.add('books');
                                } else {
                                  selectedItems.remove('books');
                                }
                              });
                            },
                          ),
                          Text('Books'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: selectedItems.contains('stationary'),
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  selectedItems.add('stationary');
                                } else {
                                  selectedItems.remove('stationary');
                                }
                              });
                            },
                          ),
                          Text('Stationary'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: selectedItems.contains('funds'),
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  selectedItems.add('funds');
                                } else {
                                  selectedItems.remove('funds');
                                }
                              });
                            },
                          ),
                          Text('Funds'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  DropdownButton(
                    value: selectedCity,
                    hint: Text(
                      'Select Your City',
                      style: TextStyle(color: Colors.black),
                    ),
                    items: cities.map((city) {
                      return DropdownMenuItem(
                        value: city,
                        child: Text(
                          city,
                          style: TextStyle(color: Colors.black),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedCity = value;
                      });
                    },
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegistrationPage()),
                      );
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}