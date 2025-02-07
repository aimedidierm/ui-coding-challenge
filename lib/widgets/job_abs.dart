import 'package:flutter/material.dart';

class JobTabs extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;

  const JobTabs(
      {super.key, required this.selectedIndex, required this.onTabSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildTab('Description', 0),
          _buildTab('Company', 1),
          _buildTab('Applicant', 2),
          _buildTab('Salary', 3),
        ],
      ),
    );
  }

  GestureDetector _buildTab(String title, int index) {
    return GestureDetector(
      onTap: () => onTabSelected(index),
      child: Text(
        title,
        style: TextStyle(
          fontWeight:
              (selectedIndex == index) ? FontWeight.bold : FontWeight.normal,
          fontSize: 16,
        ),
      ),
    );
  }
}
