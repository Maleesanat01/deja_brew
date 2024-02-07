// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';

class RegisterPg extends StatelessWidget {
  RegisterPg({super.key});
  Color myColor = Color.fromARGB(255, 247, 247, 247);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 55),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 28,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, right: 40, top: 0),
                      child: Image.asset('assets/images/deja_logo.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Text(
                'Full Name',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 140, 165, 134)),
                      borderRadius: BorderRadius.circular(20.0)),
                  hintText: "Deja Brew",
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Phone',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 140, 165, 134)),
                      borderRadius: BorderRadius.circular(20.0)),
                  hintText: "+94 70 111 2222",
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Email',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 140, 165, 134)),
                      borderRadius: BorderRadius.circular(20.0)),
                  hintText: "deja.brew@gmail.com",
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Password',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 140, 165, 134)),
                      borderRadius: BorderRadius.circular(20.0)),
                  hintText: "●●●●●●●",
                ),
              ),
              SizedBox(height: 45),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/LogInPage');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 66, 33, 21),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Center(
                        child: Text(
                          'Register',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/*Green code
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';

class RegisterPg extends StatelessWidget {
  RegisterPg({super.key});
  Color myColor = Color.fromARGB(255, 247, 247, 247);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor,
      /* appBar: AppBar(
        title: Text('Register page'),
        backgroundColor: Color.fromARGB(255, 38, 54, 34),
      ),*/
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Add padding to the whole body
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align to the left
            children: [
              SizedBox(
                height: 65,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 28,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, left: 80, right: 80, bottom: 0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(200),
                          child:
                              Image.asset('assets/images/deja_brew_logo.jpg')),
                    )
                  ],
                ),
              ),
              SizedBox(
                  height: 30), // Add space between "LOGIN" and "Enter email"
              Text(
                'Full Name',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                  height: 8), // Add space between "Enter email" and TextField
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius:
                        BorderRadius.circular(20.0), // Make the border rounded
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 140, 165, 134)),
                      borderRadius: BorderRadius.circular(20.0)),
                  hintText: "Deja Brew",
                ),
              ),
              SizedBox(
                  height: 30), // Add space between "LOGIN" and "Enter email"
              Text(
                'Phone',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                  height: 8), // Add space between "Enter email" and TextField
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius:
                        BorderRadius.circular(20.0), // Make the border rounded
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 140, 165, 134)),
                      borderRadius: BorderRadius.circular(20.0)),
                  hintText: "+94 70 111 2222",
                ),
              ),
              SizedBox(
                  height: 30), // Add space between "LOGIN" and "Enter email"
              Text(
                'Email',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                  height: 8), // Add space between "Enter email" and TextField
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius:
                        BorderRadius.circular(20.0), // Make the border rounded
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 140, 165, 134)),
                      borderRadius: BorderRadius.circular(20.0)),
                  hintText: "deja.brew@gmail.com",
                ),
              ),

              //for password
              SizedBox(
                  height: 30), // Add space between "LOGIN" and "Enter email"
              Text(
                'Password',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                  height: 8), // Add space between "Enter email" and TextField
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius:
                        BorderRadius.circular(20.0), // Make the border rounded
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 140, 165, 134)),
                      borderRadius: BorderRadius.circular(20.0)),
                  hintText: "●●●●●●●",
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/LogInPage');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 38, 54, 34),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Container(
                    width: double
                        .infinity, // Make the button take up all available width
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Center(
                        child: Text(
                          'Register',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

 */