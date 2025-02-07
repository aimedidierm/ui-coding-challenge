import 'package:flutter/material.dart';

class JobHeader extends StatelessWidget {
  const JobHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/background.jpg',
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: -20,
          left: MediaQuery.of(context).size.width / 2 - 40,
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: Image.asset(
              'assets/google_logo.png',
              width: 40,
              height: 40,
            ),
          ),
        ),
      ],
    );
  }
}
