import 'package:flutter/material.dart';
import 'package:uichallenge/screens/job_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: const Column(
        children: [
          JobHeader(),
          JobSearchBar(),
          JobSectionTitle("Recommendation"),
          JobRecommendations(),
          JobSectionTitle("Recent Job List"),
          JobRecentJobList(),
        ],
      ),
      bottomNavigationBar: const JobBottomNavigationBar(),
    );
  }
}

class JobHeader extends StatelessWidget {
  const JobHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 4),
              Text(
                "Leslie Alexander",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.notifications, color: Colors.blue),
          )
        ],
      ),
    );
  }
}

class JobSearchBar extends StatelessWidget {
  const JobSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          hintText: "Search job, company, etc..",
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class JobSectionTitle extends StatelessWidget {
  final String title;
  const JobSectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class JobRecommendations extends StatelessWidget {
  const JobRecommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          JobCard(
            companyName: "Pinterest, Inc.",
            location: "California, USA",
            position: "Motion Designer",
            salary: "\$7K/Month",
          ),
          SizedBox(width: 16),
          JobCard(
            companyName: "Facebook",
            location: "California, USA",
            position: "UI Designer",
            salary: "\$8K/Month",
          ),
        ],
      ),
    );
  }
}

class JobRecentJobList extends StatelessWidget {
  const JobRecentJobList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const JobPage();
              }));
            },
            child: const JobTile(
              companyName: "Google",
              position: "Product Designer",
              salary: "\$5K/Month",
              timePosted: "12 Minute Ago",
            ),
          ),
        ],
      ),
    );
  }
}

class JobCard extends StatelessWidget {
  final String companyName;
  final String location;
  final String position;
  final String salary;

  const JobCard({super.key, 
    required this.companyName,
    required this.location,
    required this.position,
    required this.salary,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const JobPage();
        }));
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red[100],
                      child: Text(
                        companyName[0],
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          companyName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          location,
                          style:
                              TextStyle(fontSize: 12, color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(Icons.bookmark_border),
              ],
            ),
            const SizedBox(height: 40),
            Text(
              position,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              "Senior • Fulltime • Remote",
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "Apply Now",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Text(
                  salary,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
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

class JobTile extends StatelessWidget {
  final String companyName;
  final String position;
  final String salary;
  final String timePosted;

  const JobTile({super.key, 
    required this.companyName,
    required this.position,
    required this.salary,
    required this.timePosted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue[100],
            child: Text(
              companyName[0],
              style: const TextStyle(color: Colors.blue),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  position,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Senior • Fulltime • Remote",
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                salary,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                timePosted,
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class JobBottomNavigationBar extends StatelessWidget {
  const JobBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.trending_up), label: "Trends"),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border), label: "Saved"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
    );
  }
}
