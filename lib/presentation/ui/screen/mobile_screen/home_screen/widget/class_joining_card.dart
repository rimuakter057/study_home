// lib/widgets/class_card.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClassCard extends StatelessWidget {
  final String title, instructor, date, time;
  final bool isCompleted;

  ClassCard({
    required this.title,
    required this.instructor,
    required this.date,
    required this.time,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.04), // Responsive Padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "টপিকঃ $title",
              style: TextStyle(fontSize: screenWidth * 0.05, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: screenWidth * 0.02),

            // Instructor Info Section
            _InstructorInfo(screenWidth: screenWidth, instructor: instructor),

            SizedBox(height: screenWidth * 0.03),

            // Date & Time Section
            _DateTimeInfo(screenWidth: screenWidth, date: date, time: time),

            SizedBox(height: screenWidth * 0.03),

            // Join Button or Completed Message Section
            isCompleted
                ? _CompletedMessage(screenWidth: screenWidth)
                : _JoinButton(screenWidth: screenWidth),
          ],
        ),
      ),
    );
  }

  // Instructor Info Widget
  Widget _InstructorInfo({required double screenWidth, required String instructor}) {
    return Row(
      children: [
        CircleAvatar(
         // backgroundImage: AssetImage('assets/instructor.jpg'),
          radius: screenWidth * 0.05,
        ),
        SizedBox(width: screenWidth * 0.03),
        Text(
          "Instructor: $instructor",
          style: TextStyle(fontSize: screenWidth * 0.04),
        ),
      ],
    );
  }

  // Date & Time Info Widget
  Widget _DateTimeInfo({required double screenWidth, required String date, required String time}) {
    return Row(
      children: [
        Icon(Icons.calendar_today, size: screenWidth * 0.045, color: Colors.orange),
        SizedBox(width: screenWidth * 0.02),
        Text(date, style: TextStyle(color: Colors.orange, fontSize: screenWidth * 0.04)),
        SizedBox(width: screenWidth * 0.04),
        Icon(Icons.access_time, size: screenWidth * 0.045, color: Colors.red),
        SizedBox(width: screenWidth * 0.02),
        Text(time, style: TextStyle(color: Colors.red, fontSize: screenWidth * 0.04)),
      ],
    );
  }

  // Completed Message Widget
  Widget _CompletedMessage({required double screenWidth}) {
    return Container(
      padding: EdgeInsets.all(screenWidth * 0.03),
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        "⚠️ এই লাইভ ক্লাস টি সম্পন্ন হয়েছে",
        style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: screenWidth * 0.04),
      ),
    );
  }

  // Join Button Widget
  Widget _JoinButton({required double screenWidth}) {
    return ElevatedButton(
      onPressed: () {
        // Show Snackbar
      Get.snackbar("class", "আপনি ক্লাসে জয়েন করেছেন ");
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal,
        minimumSize: Size(screenWidth * 0.8, screenWidth * 0.12), // Responsive Button
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text("📝 ক্লাস জয়েন করুন", style: TextStyle(fontSize: screenWidth * 0.045)),
    );
  }
}
