import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegistrationPage(),
    );
  }
}

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
  
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Registration Button',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Registration Page'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: 20, vertical: 20), // Set button padding
                minimumSize: Size(150, 50), // Set minimum button size
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Set rounded corner radius
                ),
              ),
              onPressed: () {
                
              },
              child: const Text('Register as Ngo',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Alkalami",
                fontSize: 20,
              ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: 25, vertical: 20), // Set button padding
                minimumSize: Size(150, 50), // Set minimum button size
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Set rounded corner radius
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstPage()),
                );
              },
              child: const Text('Register as Mentor',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Alkalami",
                fontSize: 20,
              ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: 25, vertical: 20), // Set button padding
                minimumSize: Size(150, 50), // Set minimum button size
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Set rounded corner radius
                ),
              ),
              onPressed: () {
                
              },
              child: const Text('Donation Volunteer',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Alkalami",
                fontSize: 20,
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//FirstPageCode
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
  String _number = '';
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
                  _number = value;
                },
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  hintText: 'Enter Your Phone Number',
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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NextMentorPage(),
              ),
            );
          },
          child: const Text('Next'),
        ),
      ),
    );
  }
}

class NextMentorPage extends StatefulWidget {
  const NextMentorPage({Key? key}) : super(key: key);

  @override
  _NextMentorPageState createState() => _NextMentorPageState();
}

class _NextMentorPageState extends State<NextMentorPage> {
  String? _selectedClass;
  String? _selectedSubject;
  String? _selectedTopic;
  bool _isChecked = false;
  String inputButtonValue = '';

  final List<String> _section = [
    'Class 1',
    'Class 2',
    'Class 3',
    'Class 4',
    'Class 5',
  ];

  final List<String> _subjects = [
    'English',
    'Hindi',
    'Maths',
    'Science',
    'SST',
  ];

  final List<String> _topics = [
    'Literature',
    'Grammar',
    'Theory',
    'Practical',
    'Case Study',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA1D2CE),
      appBar: AppBar(
        title: const Text('Mentoring Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Class:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 10),
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
              hint: const Text('Select a class'),
              onChanged: (newValue) {
                setState(() {
                  _selectedClass = newValue;
                });
              },
            ),
            SizedBox(height: 20),
            const Text(
              'Subjects:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 10),
            DropdownButton<String>(
              value: _selectedSubject,
              items: _subjects
                  .map(
                    (subject) => DropdownMenuItem<String>(
                      child: Text(subject),
                      value: subject,
                    ),
                  )
                  .toList(),
              hint: const Text('Select a subject'),
              onChanged: (newValue) {
                setState(() {
                  _selectedSubject = newValue;
                });
              },
            ),
            SizedBox(height: 20),
            const Text(
              'Select your topic:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 10),
            DropdownButton<String>(
              value: _selectedTopic,
              items: _topics
                  .map(
                    (topic) => DropdownMenuItem<String>(
                      child: Text(topic),
                      value: topic,
                    ),
                  )
                  .toList(),
              hint: const Text('Select a topic'),
              onChanged: (newValue) {
                setState(
                  () {
                    _selectedTopic = newValue;
                  },
                );
              },
            ),
            CheckboxListTile(
              title: const Text(
                  'I hereby confirm that I will conduct the classes in an offline mode at the above chosen day, time and venue every week.',
                  style: TextStyle(
                    fontFamily: "Alkalami",
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  )),
              value: _isChecked,
              onChanged: (bool? value) {
                setState(
                  () {
                    _isChecked = value!;
                  },
                );
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
            Center(
                child: ElevatedButton(
              onPressed: () {
                // Store the value when the button is pressed
                inputButtonValue = 'some value';
                print('Button pressed with input value: $inputButtonValue');
              },
              child: const Text('Submit'),
            ))
          ],
        ),
      ),
    );
  }
}
