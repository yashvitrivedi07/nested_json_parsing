import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/provider/homeProvider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var pw = context.watch<Homeprovider>();
    var pr = context.read<Homeprovider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("JSON PARSING"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: pw.title.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              final selectedTitle = pr.title[index];
              switch (selectedTitle) {
                case "albumb":
                  Navigator.pushNamed(context, 'albumb');
                  break;
                case "comment":
                  Navigator.pushNamed(context, 'comment');
                  break;
                case "photos":
                  Navigator.pushNamed(context, 'photo');
                  break;
                case "post":
                  Navigator.pushNamed(context, 'post');
                  break;
                case "todo":
                  Navigator.pushNamed(context, 'todo');
                  break;
                case "user":
                  Navigator.pushNamed(context, 'user');
                  break;
                default:
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Invalid selection")),
                  );
              }
            },
            child: Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  pr.title[index],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
