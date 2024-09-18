import 'package:flutter/material.dart';
import 'app_colors.dart'; 

class PopularCourseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], 
      appBar: AppBar(
        title: Text(
          'Popular Courses',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            onPressed: () {
              
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserProgressCard(),
            SizedBox(height: 20),
            OurStudentSection(),
            SizedBox(height: 20),
            Text(
              'Popular Courses',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  CourseCard(
                    title: 'Photoshop Editing Course',
                    subtitle: '30 Lessons',
                    iconPath: 'lib/assests/icon1.png',
                    starRating: 4.8,
                    onTap: () {
                      
                    },
                  ),
                  CourseCard(
                    title: 'Illustrator Editing Course',
                    subtitle: '25 Lessons',
                    iconPath: 'lib/assests/icon2.png',
                    starRating: 4.7,
                    onTap: () {
                      
                    },
                  ),
                  CourseCard(
                    title: 'Adobe XD Editing Course',
                    subtitle: '20 Lessons',
                    iconPath: 'lib/assests/icon3.png',
                    starRating: 4.6,
                    onTap: () {
                      
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentSuccessScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          
        },
      ),
    );
  }
}

class UserProgressCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Colors.lightGreenAccent, 
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mathematics Course',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      color: Colors.black54,
                      size: 18,
                    ),
                    SizedBox(width: 6),
                    Text(
                      '19 Sep, 2024',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Divider(color: Colors.black26),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.check_circle, color: Colors.green, size: 30),
                    SizedBox(height: 8),
                    Text(
                      'Completed',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      '20',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  width: 1,
                  color: Colors.black26,
                ),
                Column(
                  children: [
                    Icon(Icons.access_time, color: Colors.green, size: 30),
                    SizedBox(height: 8),
                    Text(
                      'Hours Spent',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      '455',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OurStudentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Student',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 12),
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('lib/images/pic4.jpeg'),
              radius: 30,
            ),
            SizedBox(width: 15),
            CircleAvatar(
              backgroundImage: AssetImage('lib/images/pic4.jpeg'),
              radius: 30,
            ),
            SizedBox(width: 15),
            CircleAvatar(
              backgroundImage: AssetImage('lib/images/pic4.jpeg'),
              radius: 30,
            ),
            SizedBox(width: 15),
            CircleAvatar(
              backgroundImage: AssetImage('lib/images/pic4.jpeg'),
              radius: 30,
            ),
          ],
        ),
        SizedBox(height: 12),
        Text(
          'Photoshop Editing Course',
          style: TextStyle(fontSize: 14, color: Colors.black),
        ),
        SizedBox(height: 6),
        Row(
          children: [
            Icon(Icons.timer, color: Colors.grey, size: 16),
            SizedBox(width: 6),
            Text('13h 30min', style: TextStyle(color: Colors.black)),
          ],
        ),
      ],
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String iconPath;
  final double starRating;
  final Function()? onTap;

  CourseCard({
    required this.title,
    required this.subtitle,
    required this.iconPath,
    required this.starRating,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 4,
        child: ListTile(
          leading: Image.asset(iconPath, width: 40, height: 40),
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(subtitle),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.orange, size: 16),
                  SizedBox(width: 4),
                  Text(starRating.toString(),
                      style: TextStyle(color: Colors.orange)),
                ],
              ),
            ],
          ),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
        ),
      ),
    );
  }
}

class PaymentSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 4,
          margin: EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.check_circle_outline,
                    color: AppColors.primaryColor, size: 100),
                SizedBox(height: 16),
                Text(
                  'Payment Success',
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  '\$35.00',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Adobe XD Editing Course',
                  style: TextStyle(color: AppColors.textColor),
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.primaryColor,
                    padding:
                        EdgeInsets.symmetric(vertical: 12, horizontal: 36),
                  ),
                  child: Text('Done', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
