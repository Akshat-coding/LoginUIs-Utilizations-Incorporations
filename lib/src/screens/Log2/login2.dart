import 'package:file_structure/src/screens/Log2/signup2.dart';
import 'package:flutter/material.dart';
class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
     //   color: Colors.red,
        child: Column(
          children: [
            Image.asset("assets/bloom.jpg",
              height: 400,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text("Welcome to Bloom.",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100.0, bottom: 30),
              child: Text("Nurture your mind. Unite in meditation.",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 265.0, bottom: 5),
              child: Text("Email Address",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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

                  hintText: "john.deere@gmail.com",
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding: EdgeInsets.only(left: 20),
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 300.0, bottom: 5, top: 25),
              child: Text("Password",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
                decoration: const InputDecoration(

                  hintText: "Enter Your Password",
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding: EdgeInsets.only(left: 20),

                  border: InputBorder.none,
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(width: 280,),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text("Reset Password",
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),

              ],
            ),
            SizedBox(height: 30,),
            Container(
              height: 50,
              width: 375,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text("Log in",
                  style: TextStyle(color: Colors.white,  fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 110,),
                Text("New to Bloom? ",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Signup2()));
                  },
                  child: Text("Sign up",
                    style: TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
