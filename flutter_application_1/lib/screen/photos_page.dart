import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/homeProvider.dart';
import 'package:provider/provider.dart';

class PhotosPage extends StatefulWidget {
  const PhotosPage({super.key});

  @override
  State<PhotosPage> createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> {
  @override
  void initState() {
    super.initState();
    context.read<Homeprovider>().getPhoto();
  }
  @override
  Widget build(BuildContext context) {
    var pw = context.watch<Homeprovider>();
    var pr = context.read<Homeprovider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Photo Page"),
      ),

      body: ListView.builder(
        itemCount: pw.photo.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(pr.photo[index].albumId.toString()),
            subtitle: Text(pr.photo[index].id.toString()),
          );
        },
      ),
    );
  }
}