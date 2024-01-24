import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Social {
  final String username;
  final String handle;
  final String text;

  Social({
    required this.username,
    required this.handle,
    required this.text,
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SocialTimeline(),
    );
  }
}

class SocialTimeline extends StatelessWidget {
  final List<Social> social = [
    Social(
      username: 'John Doe',
      handle: '@john_doe',
      text: 'This is my first tweet!',
    ),
    Social(
      username: 'Jane Smith',
      handle: '@jane_smith',
      text: 'Hello, Flutter world!',
    ),
    // Add more mock tweets as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social Timeline'),
      ),
      body: ListView.builder(
        itemCount: social.length,
        itemBuilder: (context, index) {
          final Social socials = social[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text(socials
                  .handle[1]), // Displaying the first letter of the handle
            ),
            title: Text('${socials.username} ${socials.handle}'),
            subtitle: Text(socials.text),
          );
        },
      ),
    );
  }
}
