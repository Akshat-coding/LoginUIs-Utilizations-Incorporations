import 'package:flutter/material.dart';
class Signup2 extends StatefulWidget {
  const Signup2({super.key});

  @override
  State<Signup2> createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80,),
          Center(
            child: Icon(Icons.grid_on_rounded,
              color: Colors.black,
              size: 60,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, top: 30),
            child: Text("Join Our Exclusive Community!",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30, top: 10),
            child: Text("Become a member to enjoy special content and offers. Sign up now and get 10% off your first purchase with Bloom",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),
          SizedBox(height: 40,),
          Container(
            height: 50,
            width: 375,
            // color: Colors.red,
            decoration: BoxDecoration(
             border: Border.all(
               color: Colors.grey.withOpacity(0.5),
             ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: _email,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.withOpacity(0.15),
                prefixIcon: Icon(Icons.email_sharp,
                  color: Colors.grey,
                ),
                hintText: "Email",
                hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 12)
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 50,
            width: 375,
            // color: Colors.red,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.withOpacity(0.5),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: _password,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.15),
                  prefixIcon: Icon(Icons.lock,
                    color: Colors.grey,
                  ),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 12),
                  suffixIcon: Icon(Icons.visibility_rounded,
                    color: Colors.grey,
                  ),

              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 50,
            width: 375,
            // color: Colors.red,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.withOpacity(0.5),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: _confirmPassword,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.withOpacity(0.15),
                prefixIcon: Icon(Icons.lock,
                  color: Colors.grey,
                ),
                hintText: "Confirm Your Password",
                hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 12),
                suffixIcon: Icon(Icons.visibility_rounded,
                  color: Colors.grey,
                ),

              ),
            ),
          ),
          SizedBox(height: 50,),
          Container(
            height: 50,
            width: 375,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text("Create My Account",
                style: TextStyle(color: Colors.white,  fontSize: 18),
              ),
            ),
          ),
          SizedBox(height: 25,),
          Text("or continue with",
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [


              Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.4), width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset("assets/google.jpg",)),
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.4), width: 1),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Image.asset("assets/facebook.jpg")),
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.4), width: 1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Image.asset("assets/apple.jpg")),
            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Text("Your privacy matters. We keep your data secure and never share it.",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
