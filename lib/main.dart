import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedValue = 0;
  String _cardNumber = '';
  String _name = '';
  String _age = '';
  String _degree = '';
  String _proof = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFFA1D2CE),
          appBar: AppBar(
            backgroundColor: const Color(0xFF62A8AC),
            centerTitle: true,
            title: const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                'Mentor Registration',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Alkalami",
                  fontSize: 25,
                ),
              ),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(5.0),
                child: Image.network(
                  "https://img.freepik.com/free-vector/teacher-standing-near-blackboard-holding-stick-isolated-flat-vector-illustration-cartoon-woman-character-near-chalkboard-pointing-alphabet_74855-8600.jpg",
                  width: 400,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 0),
                padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Personal Information",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: "Alkalami",
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
                padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 231, 225, 227),
                ),
                child: TextField(
                  onChanged: (value) {
                    // store the value entered in the text field
                    _name = value;
                  },
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    hintText: 'Enter Your Name',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
                padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 231, 225, 227),
                ),
                child: TextField(
                  onChanged: (value) {
                    // store the value entered in the text field
                    _age = value;
                  },
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    hintText: 'Enter Your Age',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
                padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 231, 225, 227),
                ),
                child: TextField(
                  onChanged: (value) {
                    // store the value entered in the text field
                    _degree = value;
                  },
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    hintText: 'Enter Your Highest Degree',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Are you a college student?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Alkalami",
                        fontSize: 15,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 0,
                          groupValue: _selectedValue,
                          onChanged: (value) {
                            setState(() {
                              _selectedValue = 0;
                            });
                          },
                        ),
                        const Text(
                          "Yes",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Alkalami",
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 1,
                          groupValue: _selectedValue,
                          onChanged: (value) {
                            setState(() {
                              _selectedValue = 1;
                            });
                          },
                        ),
                        const Text(
                          "No",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Alkalami",
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
                padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 231, 225, 227),
                ),
                child: TextField(
                  onChanged: (value) {
                    // store the value entered in the text field
                    _cardNumber = value;
                  },
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    hintText: 'Enter Aadhar Card Number Or Pan Card Number',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
                padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 231, 225, 227),
                ),
                child: TextField(
                  onChanged: (value) {
                    // store the value entered in the text field
                    _proof = value;
                  },
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    hintText: 'Provide Google Drive Link',
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              height: 15.0,
              width: 15.0,
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => NextMentorPage()),
              // );
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NextMentorPage()),
            );
            },
            child: const Text('Next'),
          ),
        ),
      ),
    );
  }
}

class NextMentorPage extends StatelessWidget {
  const NextMentorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
