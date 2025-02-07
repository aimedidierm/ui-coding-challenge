import 'package:flutter/material.dart';

class JobDetails extends StatelessWidget {
  const JobDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Job Responsibilities',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
              '• Deliver a well-crafted design that follows standard for consistency in quality and experience.'),
          SizedBox(height: 5),
          Text(
              '• Design creative solutions that deliver not only value to customers but also solve business objectives.'),
          SizedBox(height: 5),
          Text(
              '• Contribute to design critiques, conceptual discussion, and maintain consistency of design systems.'),
        ],
      ),
    );
  }
}
