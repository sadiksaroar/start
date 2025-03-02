import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Profile and Calendar')),
        body: SingleChildScrollView(
          child: Column(children: [ProfileSection(), CalendarSection()]),
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              " https://www.google.com/url?sa=i&url=https%3A%2F%2Fpinterest.en.softonic.com%2F&psig=AOvVaw08AB9JBU3B0YnAKet_oRQb&ust=1741032182131000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCIjc6LiY7IsDFQAAAAAdAAAAABAE",
            ), // Add your image asset
          ),
          SizedBox(width: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Danilo Tanio',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'danilo@uscreen.tv',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CalendarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('a3fs 768(1234.9KB)'), Text('5h')],
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Mon'),
              Text('Tue'),
              Text('Wed'),
              Text('Thu'),
              Text('Fri'),
              Text('Sat'),
              Text('Sun'),
            ],
          ),
        ],
      ),
    );
  }
}
