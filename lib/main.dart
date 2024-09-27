import 'package:flutter/material.dart';

void main() {
  runApp(MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kyle Eron P. Hallares'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile picture and name
              Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('lib/assets/profile.jpg'), // Add profile image
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Kyle Eron P. Hallares',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Information section (Hobbies, etc.)
              Table(
                columnWidths: {
                  0: FlexColumnWidth(10),
                  1: FlexColumnWidth(3),
                },
                children: [
                  _buildTableRow(Icons.calendar_today, 'Birthdate', 'March 21, 2004'),
                  _buildTableRow(Icons.location_city, 'Address', 'Jaro, Iloilo City, Iloilo, Philippines'),
                  _buildTableRow(Icons.email, 'Email', 'kyle.hallares@wvsu.edu.ph'),
                  _buildTableRow(Icons.phone, 'Phone Number', '09101280757'),
                  _buildTableRow(Icons.school, 'Education', 'West Visayas State University'),
                  _buildTableRow(Icons.book, 'Course', 'BS in Computer Science'),
                  _buildTableRow(Icons.games_outlined, 'Hobbies', 'Valorant, Gym'),
                ],
              ),
              SizedBox(height: 30),

              // Biography section
              Text(
                'My Biography',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'I am Kyle Eron P. Hallares, currently pursuing a Bachelor of Science in Computer Science at West Visayas '
                'State University. Growing up in the vibrant city of Jaro, Iloilo, I have always been fascinated by '
                'technology and how it can shape the world around us. My passion for coding and problem-solving '
                'has guided me through my academic journey, allowing me to explore various aspects of software '
                'development and computer systems. '
                'Beyond academics, I enjoy engaging in activities that allow me to unwind and recharge. Whether it is '
                'honing my skills in online games like Valorant, staying active at the gym, or spending time with '
                'friends, I value a balance between hard work and relaxation. I believe that small moments, like a '
                'competitive game session or a refreshing workout, contribute to the overall growth of both the mind '
                'and body. '
                'I look forward to applying my skills in the real world, solving complex problems, and making '
                'meaningful contributions to the field of technology. With each step, I am committed to continuous '
                'learning, self-improvement, and embracing the challenges that lie ahead.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TableRow _buildTableRow(IconData icon, String label, String data) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              Icon(icon, color: Colors.blueGrey),
              SizedBox(width: 10),
              Text(
                label,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(data),
        ),
      ],
    );
  }
}
