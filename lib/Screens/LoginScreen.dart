import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passsecure = false;
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF0ECE2),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Aligns text to the left
              children: [
                const Image(
                  image: AssetImage(
                      "images/—Pngtree—flat design of tailor fashion_6101332.png"),
                  width: 750,
                  height: 350,
                ),
                Text(
                  "Welcome back!",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: const Color(
                        0xff596E79), // Color property needs correction
                  ),
                ),
                Text(
                  "Enter your email and password",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    fontSize: 17.0,
                    color: const Color(
                        0xff596E79), // Color property needs correction
                  ),
                ),
                const SizedBox(height: 30),
                TextField(
                  controller: email, // Replace with your TextEditingController
                  style: const TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                  decoration: InputDecoration(
                    hintText: "Email",
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 10.0),
                    prefixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: const Icon(Icons.person),
                        ),
                        const SizedBox(width: 1.0),
                        // Add a Container with 1-width black vertical line
                        Container(
                          width: 1.0,
                          color: Colors.black,
                          margin: const EdgeInsets.symmetric(vertical: 10.0),
                        ),
                      ],
                    ),
        
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: const Color(0xffDFD3C3),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
  obscureText: passsecure,
  controller: password,
  style: const TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
  ),
  decoration: InputDecoration(
    hintText: "Password",
    
    contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
    prefixIcon: const Icon(Icons.lock),
    prefixIconColor: const Color.fromRGBO(0, 0, 0, 1),
    suffixIcon: GestureDetector(
      onTap: () {
        setState(() {
          passsecure = !passsecure;
        });
      },
      child: Icon(
        passsecure ? Icons.visibility_off : Icons.visibility,
        color: Colors.black,
      ),
    ),
    filled: true,
    fillColor: const Color(0xffDFD3C3),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0), 
      borderSide: BorderSide.none, // Removing the border side
    ),
    
  ),
),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
