/// SecondPage widget displays a welcome message to the user after login.
/// It demonstrates navigation and data passing between screens.
import 'package:flutter/material.dart';

/// SecondPage is a StatefulWidget that receives a username parameter
/// and displays a personalized welcome message.
class SecondPage extends StatefulWidget {
/// The username passed from the login screen
final String username;

const SecondPage({
super.key,
required this.username,
});

@override
State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
final TextEditingController _ageController = TextEditingController();
final TextEditingController _courseController = TextEditingController();
String _age = '';
String _course = '';
bool _hasSubmitted = false;

void _showAgeAndCourse() {
showDialog(
context: context,
builder: (context) {
return AlertDialog(
title: const Text('Enter Age and Course'),
content: Column(
mainAxisSize: MainAxisSize.min,
children: [
TextField(
controller: _ageController,
decoration: const InputDecoration(
labelText: 'Age',
),
),
TextField(
controller: _courseController,
decoration: const InputDecoration(
labelText: 'Course',
),
),
],
),
actions: [
TextButton(
onPressed: () {
setState(() {
_age = _ageController.text;
_course = _courseController.text;
_hasSubmitted = true;
});
Navigator.pop(context);
},
child: const Text('Submit'),
),
],
);
},
);
}

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Welcome'),
backgroundColor: Colors.white,
),
body: Container(
decoration: BoxDecoration(
gradient: LinearGradient(
begin: Alignment.topLeft,
end: Alignment.bottomRight,
colors: [
const Color.fromARGB(255, 105, 235, 144)!, // light pink
Colors.redAccent[400]!, // deep red
],
),
),
child: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text(
'Welcome kupal , ${widget.username}!',
style: const TextStyle(
color: Color.fromARGB(255, 24, 255, 3),
fontSize: 69,
),
),
const SizedBox(height: 20),
(!_hasSubmitted)
? ElevatedButton(
onPressed: _showAgeAndCourse,
child: const Text('Enter Age and Course'),
)
: const SizedBox(),
const SizedBox(height: 20),
Text(
'Age: $_age',
style: const TextStyle(fontSize: 24),
),
Text(
'Course: $_course',
style: const TextStyle(fontSize: 24),
),
],
),
),
),
);
}
}
