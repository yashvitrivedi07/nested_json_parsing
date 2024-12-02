import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/homeProvider.dart';
import 'package:provider/provider.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<Homeprovider>().getTodo();
  }
  @override
  Widget build(BuildContext context) {
    var pw = context.watch<Homeprovider>();
    var pr = context.read<Homeprovider>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo Page"),
      ),

      body: ListView.builder(
        itemCount: pw.todo.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(pr.todo[index].id.toString()),
            subtitle: Text(pr.todo[index].title!),
            trailing: Text(pr.todo[index].completed! as String),
          );
        },
      ),
    );
  }
}