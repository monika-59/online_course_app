import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'popular_course_screen.dart';

class CourseDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.textColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: AppColors.textColor),
            onPressed: () {
              // Notification action
            },
          ),
        ],
        title: Text(
          'Details',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Course Card with Avatars
            Card(
              color: AppColors.cardColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // "Our Student" Label and Avatars
                    Text(
                      'Our Student',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: AppColors.textColor,
                      ),
                    ),
                    SizedBox(height: 8),
                    // Row for Avatars
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('lib/images/pic4.jpeg'), // Replace with actual image
                        ),
                        SizedBox(width: 8),
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('lib/images/pic4.jpeg'),
                        ),
                        SizedBox(width: 8),
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('lib/images/pic4.jpeg'),
                        ),
                        SizedBox(width: 8),
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('lib/images/pic4.jpeg'),
                        ),
                        SizedBox(width: 8),
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('lib/images/pic4.jpeg'),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    // Course title and description
                    Text(
                      'Photoshop Editing Course',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textColor,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'A representation that can convey the three-dimensional aspect of a design through a two-dimensional medium.',
                      style: TextStyle(
                        color: AppColors.lightTextColor,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Icon(Icons.people, color: AppColors.iconColor),
                        SizedBox(width: 4),
                        Text(
                          '30 Lessons',
                          style: TextStyle(color: AppColors.textColor),
                        ),
                        Spacer(),
                        Icon(
                          Icons.timer,
                          color: AppColors.iconColor,
                        ),
                        SizedBox(width: 4),
                        Text(
                          '13h 30min',
                          style: TextStyle(
                            color: AppColors.lightTextColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Video',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                   
                  },
                  child: Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),

            Expanded(
              child: ListView(
                children: [
                  buildVideoLessonTile('Introduction', '3h 30min', false, context),
                  buildVideoLessonTile('Install Software', '1h 30min', false, context),
                  buildVideoLessonTile('Learn Tools', '2h 30min', false, context),
                  buildVideoLessonTile('Tracing Sketches', '2h 00min', false, context),
                ],
              ),
            ),

            
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.secondaryColor, 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    ),
                    child: Icon(
                      Icons.folder, 
                      color: AppColors.primaryColor,
                      size: 24,
                    ),
                    onPressed: () {
                   
                    },
                  ),
                  
                 
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 8),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        child: Text('Enroll Now', style: TextStyle(color: Colors.white)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PopularCourseScreen()),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  
  Widget buildVideoLessonTile(String title, String duration, bool isUnlocked, BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
        child: Row(
          children: [
            
            Icon(
              isUnlocked ? Icons.play_circle_fill : Icons.lock,
              color: isUnlocked ? AppColors.primaryColor : AppColors.iconColor,
              size: 30,
            ),
            SizedBox(width: 16),
            
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    duration,
                    style: TextStyle(
                      color: AppColors.lightTextColor,
                    ),
                  ),
                ],
              ),
            ),
            
            Row(
              children: [
                Text(
                  'Play Video',
                  style: TextStyle(color: AppColors.textColor, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 221, 222, 219),
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(8),
                  ),
                  child: Icon(Icons.play_arrow, color: Colors.white),
                  onPressed: isUnlocked
                      ? () {
                          
                        }
                      : null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
