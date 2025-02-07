import 'package:flutter/material.dart';
import 'package:uichallenge/widgets/job_abs.dart';
import 'package:uichallenge/widgets/job_actions.dart';
import 'package:uichallenge/widgets/job_details.dart';
import 'package:uichallenge/widgets/job_header.dart';
import 'package:uichallenge/widgets/job_skills.dart';
import 'package:uichallenge/widgets/job_title_and_location.dart';

class JobPage extends StatefulWidget {
  const JobPage({super.key});

  @override
  State<JobPage> createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const JobHeader(),
            const SizedBox(height: 40),
            const JobTitleAndLocation(),
            const SizedBox(height: 40),
            JobTabs(
              selectedIndex: selectedIndex,
              onTabSelected: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
            const Divider(color: Colors.grey),
            const JobDetails(),
            const SizedBox(height: 20),
            const JobSkills(),
            const SizedBox(height: 20),
            const JobActions(),
          ],
        ),
      ),
    );
  }
}
