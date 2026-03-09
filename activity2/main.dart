import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mobile Development 2"),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
          child: Column(
            children: [
              // My Profile Header
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(16, 14, 16, 14),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "My Profile",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Student Information Card",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12), // spacing between cards

              // Profile Photo
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(16, 14, 16, 14),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "Profile Photo",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        "assets/images/profile.jpg",
                        width: double.infinity,
                        height: 220,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: double.infinity,
                            height: 220,
                            color: Colors.red[800],
                            child: Icon(
                              Icons.person,
                              size: 100,
                              color: Colors.white54,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),

              // Personal Details
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(16, 14, 16, 14),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Personal Details",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Full Name: Daryl RJ B. Montipalco",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    Text("Nickname: Ryl",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    Text("Birthday: December 12, 2005",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    Text("Age: 20",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    Text("Gender: Male",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    Text("Address: Bacnotan, La Union",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                  ],
                ),
              ),
              SizedBox(height: 12),

              // Academic Information
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(16, 14, 16, 14),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Academic Information",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("School: Lorma Colleges",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    Text("Course: BSIT",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    Text("Year & Section: BSIT-II",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    Text("Student No.: 2402410",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    Text("Subject: Mobile Development 2",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    Text("Instructor: Johnny Verzola",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                  ],
                ),
              ),
              SizedBox(height: 12),

              // Favorites
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(16, 14, 16, 14),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "My Favorites",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Color: Blue",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    Text("Food: Adobo",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    Text("Movie: Your Name",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    Text("Music: OPM",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    Text("Sports: Basketball and Volleyball",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    Text("Hobby: Playing Mobile games",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                  ],
                ),
              ),
              SizedBox(height: 12),

              // Fun Facts
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(16, 14, 16, 14),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Fun Facts About Me",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Pet: Cat named Muning",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    Text("Skill: Flutter Development",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    Text("Dream Job: Mobile Developer",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    Text("Quote: Code. Learn. Repeat.",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                  ],
                ),
              ),
              SizedBox(height: 12),

              // Developer Info
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(16, 14, 16, 14),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Developer Info",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Developer: Daryl RJ B. Montipalco",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    Text("Instructor: Johnny Verzola",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    Text("Term: 2nd Semester, A.Y. 2025-2026",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}