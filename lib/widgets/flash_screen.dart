import 'package:flutter/material.dart';
import 'dart:async';
import 'package:taskflow/auth/login_page.dart';

class Flshscreen extends StatefulWidget {
  const Flshscreen({super.key});

  @override
  State<Flshscreen> createState() => _FlshscreenState();
}

class _FlshscreenState extends State<Flshscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return LoginPage();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF6366F1), Color(0xFF4F46E5), Color(0xFF4338CA)],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(Icons.check, size: 40, color: Colors.indigo),
            ),

            SizedBox(height: 10),

            Text(
              "Task Flow",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Organize Your Task \n Achieve Your Goals",
              style: TextStyle(fontSize: 16, color: Colors.white, height: 1.5),
            ),

            SizedBox(height: 50),

            CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
          ],
        ),
      ),
    );
  }
}