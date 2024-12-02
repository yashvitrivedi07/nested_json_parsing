import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/homeProvider.dart';
import 'package:flutter_application_1/screen/albumb_page.dart';
import 'package:flutter_application_1/screen/comment_page.dart';
import 'package:flutter_application_1/screen/home_page.dart';
import 'package:flutter_application_1/screen/photos_page.dart';
import 'package:flutter_application_1/screen/post_page.dart';
import 'package:flutter_application_1/screen/todo_page.dart';
import 'package:flutter_application_1/screen/user_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
  providers: [
    ChangeNotifierProvider(create: (context) => Homeprovider()),
  ],
  child: const MyApp(),
)

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      routes: {
        '/': (context) => const HomePage(),
        'comment': (context) => const CommentPage(),
        'albumb': (context) => const AlbumbPage(),
        'photo': (context) => const PhotosPage(),
        'post': (context) => const PostPage(),
        'todo': (context) => const TodoPage(),
        'user': (context) => const UserPage(),
      },
    );
  }
}
