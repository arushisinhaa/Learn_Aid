import 'package:flutter/material.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import 'activity_page.dart';
import 'about_us.dart';
import 'registration_page.dart';
import 'ngo_second_page.dart';
import 'mentor_first_page.dart';
import 'mentor_second_page.dart';
import 'donation_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedValue = 0;
  String _cardNumber = '';
  String _name = '';
  String _age = '';
  String _degree = '';
  String _proof = '';
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
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 231, 225, 227),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Name of NGO:"),
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
                  color: Color.fromARGB(255, 231, 225, 227),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Phone Number:"),
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
                    const Text("Email id:"),
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
                    const Text(" Office Address Line 1:"),
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
                    const Text("Office Address Line 2:"),
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
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 15.0,
            width: 15.0,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NextNGOPage()),
            );
          },
          child: const Text('Next'),
        ),
      ),
    );
  }
}


