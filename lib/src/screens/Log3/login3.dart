import 'package:file_structure/src/screens/Log3/signup3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login3 extends StatefulWidget {
  const Login3({super.key});

  @override
  State<Login3> createState() => _Login3State();
}

class _Login3State extends State<Login3> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Text("Welcome back",
                  style: GoogleFonts.actor(fontSize: 20, fontWeight:  FontWeight.bold)
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 75.0, top: 8, bottom: 30),
            child: Text("Sign in to your account to continue.",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 240.0, bottom: 5),
            child: Text("Email Address",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            height: 50,
            width: 375,
            // color: Colors.red,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.3), width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: _email,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 17),
                hintText: "Enter Your Email",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 280.0, bottom: 5, top: 25),
            child: Text("Password",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            height: 50,
            width: 375,
            // color: Colors.red,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.3), width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: _password,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 15, top: 10),
                hintText: "Enter Your Password",
                hintStyle: TextStyle(color: Colors.grey),
                suffixIcon: Icon(Icons.visibility_off_outlined,
                  color: Colors.black,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              SizedBox(width: 260,),
              Text("Forgot Password?",
                style: TextStyle(fontSize: 16, color: Colors.redAccent, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 45,),
          Container(
            height: 50,
            width: 375,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text("Sign in",
                style: TextStyle(color: Colors.white,  fontSize: 20),
              ),
            ),
          ),
          SizedBox(height: 35,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 10),
                child: Container(
                  height: 1,
                  width: 125,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text("Or sign in with",
                  style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11.0),
                child: Container(
                  height: 1,
                  width: 130,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Image.asset("assets/blah.jpg"),
          SizedBox(height: 125,),
          Row(
            children: [
              SizedBox(width: 75,),
              Text("Don't have an account?",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Signup3()));
                },
                child: Text(" Create one",
                  style: TextStyle(color: Colors.redAccent, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
