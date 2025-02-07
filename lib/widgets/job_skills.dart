import 'package:flutter/material.dart';

class JobSkills extends StatelessWidget {
  const JobSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skills Needed',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Wrap(
            spacing: 10,
            children: [
              Text('Lead'),
              Text('• UX Design'),
              Text('• Problem Solving'),
              Text('• Critical'),
            ],
          ),
        ],
      ),
    );
  }
}
