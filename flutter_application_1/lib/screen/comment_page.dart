import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/homeProvider.dart';
import 'package:provider/provider.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({super.key});

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<Homeprovider>().getAlbumb();
  }
  @override
  Widget build(BuildContext context) {
    var pw = context.watch<Homeprovider>(); 
    var pr = context.read<Homeprovider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Comments Page"),
      ),

      body: ListView.builder(
        itemCount: pw.comment.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(pr.comment[index].name!),
            subtitle: Text(pr.comment[index].email!),
            trailing: Text(pr.comment[index].postId!.toString()),
            leading: Text(pr.comment[index].id!.toString()),

          );
        },
      ),


    );
  }
}