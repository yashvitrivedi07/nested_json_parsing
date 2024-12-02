import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/homeProvider.dart';
import 'package:provider/provider.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<Homeprovider>().getPost();
  }
  @override
  Widget build(BuildContext context) {
    var pw = context.watch<Homeprovider>();
    var pr = context.read<Homeprovider>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Page"),
      ),

      body: ListView.builder(
        itemCount: pw.post.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(pr.post[index].id.toString()),
            subtitle: Text(pr.post[index].body!),
          );
        },
      ),
    );
  }
}