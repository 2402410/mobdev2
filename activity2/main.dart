import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile',
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Widget buildSection(String title, Color color, List<String> items) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6), // half of 12px for spacing between cards (top + bottom)
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 14), // card padding: L/R 16, T/B 14
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16), // card border radius 16px
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16, // title font size 16px
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10), // spacing between title and content text
          ...items.map(
            (item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 5), // spacing of text 10px total vertical (5 top + 5 bottom)
              child: Text(
                item,
                style: const TextStyle(color: Colors.white, fontSize: 14), // content text 14px
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 5),
          child: Text(
            "Mobile Development 2",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800, // thicker font
            ),
          ),
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 20), // body padding: L/R 20, top 10, bottom 20
        child: Column(
          children: [
            // My Profile Header
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 6), // half of 12px spacing between cards
              padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                children: [
                  Text(
                    "My Profile",
                    style: TextStyle(
                      fontSize: 40, // heading font size 40px
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10), // spacing of text 10px
                  Text(
                    "Student Information Card",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14, // text font size 14px
                    ),
                  ),
                ],
              ),
            ),

            // Profile Photo Card
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 6), // spacing between cards
              padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Profile Photo",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16, // title font size 16px
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10), // spacing of text 10px
                  SizedBox(
                    height: 360,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        "assets/images/profile.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Personal Details
            buildSection("Personal Details", Colors.red, [
              "Full Name: Daryl RJ B. Montipalco",
              "Nickname: Ryl",
              "Birthday: December 12, 2005",
              "Age: 20",
              "Gender: Male",
              "Address: Bacnotan, La Union",
            ]),

            // Academic Info
            buildSection("Academic Information", Colors.green, [
              "School: Lorma Colleges",
              "Course: BSIT",
              "Year & Section: BSIT-II",
              "Student No.: 2402410",
              "Subject: Mobile Development 2",
              "Instructor: Johnny Verzola",
            ]),

            // Favorites
            buildSection("My Favorites", Colors.blue, [
              "Color: Blue",
              "Food: Adobo",
              "Movie: Your Name",
              "Music: OPM",
              "Sports: Basketball and Volleyball",
              "Hobby: Playing Mobile games",
            ]),

            // Fun Facts
            buildSection("Fun Facts About Me", Colors.orange, [
              "Pet: Cat named Muning",
              "Skill: Flutter Development",
              "Dream Job: Mobile Developer",
              "Quote: Code. Learn. Repeat.",
            ]),

            // Developer info
            buildSection("Developer Info", Colors.deepPurple, [
              "Developer: Daryl RJ B. Montipalco",
              "Instructor: Johnny verzola",
              "Term: 2nd Semester.A.Y.2025-2026",
            ]),
          ],
        ),
      ),
    );
  }
}