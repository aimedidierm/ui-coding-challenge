import 'package:flutter/material.dart';

class JobTitleAndLocation extends StatelessWidget {
  const JobTitleAndLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Center(
          child: Text(
            'Product Designer',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            'California, USA',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
