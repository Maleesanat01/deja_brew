// profile_pg.dart
// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace
import 'package:flutter/material.dart';

class ProfilePg extends StatelessWidget {
  const ProfilePg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 254, 254),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  'Edit profile',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/user_profile1.png',
                        height: 230,
                        width: 230,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: IconButton(
                        onPressed: () {
                          //logic for image upload
                        },
                        icon: Icon(
                          Icons.edit,
                          color: Colors.brown,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Name',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
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
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
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
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  hintText: "deja.brew@gmail.com",
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    //Navigator.pushNamed(context, '/LogInPage');
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
                          'Save',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ], // Add this closing bracket
          ),
        ),
      ),
    );
  }
}
