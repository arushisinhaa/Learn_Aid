import 'package:flutter/material.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import 'activity_page.dart';
import 'about_us.dart';
import 'registration_page.dart';
import 'ngo_first_page.dart';
import 'mentor_first_page.dart';
import 'mentor_second_page.dart';
import 'donation_page.dart';

class NextNGOPage extends StatefulWidget {
  const NextNGOPage({super.key});

  @override
  State<NextNGOPage> createState() => _NextNGOPageState();
}

class _NextNGOPageState extends State<NextNGOPage> {
  int _selectedValue = 0;
  String _cardNumber = '';
  String _name = '';
  String _age = '';
  String _degree = '';
  String _proof = '';
  bool _ischecked = false;
  String? _selectedClass;
  final List<String> _section = [
    'Saturday',
    'Sunday',
    'Both',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFA1D2CE),
        appBar: AppBar(
          backgroundColor: const Color(0xFF62A8AC),
          centerTitle: true,
          title: const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'NGO Registration',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Alkalami",
                fontSize: 25,
              ),
            ),
          ),
        ),
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(5.0),
                child: Image.network(
                  "https://corpbiz.io/learning/wp-content/uploads/2019/11/NGO-Registration.jpg",
                  width: 400,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 231, 225, 227),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Number of students available:"),
                    SizedBox(
                      width: 150,
                      child: TextField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {
                          setState(
                            () {
                              _cardNumber = value;
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 231, 225, 227),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Age group of students:"),
                    SizedBox(
                      width: 150,
                      child: TextField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {
                          setState(
                            () {
                              _cardNumber = value;
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 231, 225, 227),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Select days:',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    const SizedBox(height: 10),
                    DropdownButton<String>(
                      value: _selectedClass,
                      items: _section
                          .map(
                            (sec) => DropdownMenuItem<String>(
                              child: Text(sec),
                              value: sec,
                            ),
                          )
                          .toList(),
                      hint: const Text('Select a day'),
                      onChanged: (newValue) {
                        setState(() {
                          _selectedClass = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 231, 225, 227),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Tutoring hours:"),
                    SizedBox(
                      width: 150,
                      child: TextField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {
                          setState(
                            () {
                              _cardNumber = value;
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CheckboxListTile(
                title: const Text(
                    'We hereby confirm that we will provide all the resources to conduct the classes in an offline mode.',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Alkalami",
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    )),
                value: _ischecked,
                onChanged: (bool? value) {
                  setState(
                    () {
                      _ischecked = value!;
                    },
                  );
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 15.0,
            width: 15.0,
          ),
        ),
        floatingActionButton: _ischecked==true? FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RegistrationPage()),
            );
          },
          child: const Text('Submit'),
        ):SizedBox()
      ),
    );
  }
}