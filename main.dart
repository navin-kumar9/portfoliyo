import 'package:flutter/material.dart';

void main() => runApp(MyPortfolioApp());

class MyPortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/profile.jpg'), // Add your profile picture here
            ),
            SizedBox(height: 16),
            Text(
              'Your Name',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Hi! I am a passionate Flutter developer with experience in building cross-platform mobile applications. I love creating beautiful and responsive UIs.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SkillChip(skill: 'Flutter'),
                SizedBox(width: 8),
                SkillChip(skill: 'Dart'),
                SizedBox(width: 8),
                SkillChip(skill: 'Firebase'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  final String skill;

  SkillChip({required this.skill});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(skill),
      backgroundColor: Colors.blue[100],
    );
  }
}
