import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        );
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  final Color primaryColor = Color(0xFF0A1F44);
  final Color secondaryColor = Color(0xFF2D9CDB);
  final Color backgroundColor = Color(0xFFF5F9FF);
  final Color cardColor = Colors.white;
  final Color textColor = Color(0xFF4F4F4F);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Hi, Steven", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.png'), // Change to actual image
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Let's make this day productive", style: TextStyle(color: Colors.grey, fontSize: 16)),
            SizedBox(height: 20),
            Text("My Task", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1.4,
                children: [
                  TaskCard(title: "Completed", count: "86", color: Colors.blue),
                  TaskCard(title: "Pending", count: "15", color: Colors.purple),
                  TaskCard(title: "Canceled", count: "15", color: Colors.red),
                  TaskCard(title: "On Going", count: "67", color: Colors.green),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Today Task", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text("View all", style: TextStyle(color: Colors.blue, fontSize: 14)),
              ],
            ),
            SizedBox(height: 10),
            TaskItem(title: "Cleaning Clothes", time: "07:00 - 07:15"),
            SizedBox(height: 10),
            TaskItem(title: "Cleaning Clothes", time: "08:00 - 08:30"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: "Tasks"),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: "Files"),
        ],
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  final String title;
  final String count;
  final Color color;

  const TaskCard({super.key, required this.title, required this.count, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Spacer(),
          Text("$count Task", style: TextStyle(fontSize: 14, color: Colors.grey[700])),
        ],
      ),
    );
  }
}

class TaskItem extends StatelessWidget {
  final String title;
  final String time;

  const TaskItem({super.key, required this.title, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 2,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text(time, style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
