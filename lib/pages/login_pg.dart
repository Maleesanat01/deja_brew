// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';

class LoginPg extends StatelessWidget {
  LoginPg({super.key});
  Color myColor = Color.fromARGB(255, 247, 247, 247);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor,
      /*appBar: AppBar(
        title: Text('Login page'),
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
                      'Login',
                      style: TextStyle(
                        fontSize: 28,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 0, left: 40, right: 40),
                      child: Image.asset('assets/images/deja_logo.png'),
                    )
                  ],
                ),
              ),
              SizedBox(
                  height: 20), // Add space between "LOGIN" and "Enter email"
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
                      borderRadius: BorderRadius.circular(20.0)),
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
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: Colors.brown,
                          decoration: TextDecoration.underline),
                      //textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/HomePage');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 66, 33, 21),
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
                              'Log in',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, '/RegisterPage');
                        },
                        child: Text(
                          "Don't have an account? Click Here To Register",
                          style: TextStyle(
                              color: Colors.brown,
                              decoration: TextDecoration.underline),
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
