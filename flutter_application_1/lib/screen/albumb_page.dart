import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/homeProvider.dart';
import 'package:provider/provider.dart';

class AlbumbPage extends StatefulWidget {
  const AlbumbPage({super.key});

  @override
  State<AlbumbPage> createState() => _AlbumbPageState();
}

class _AlbumbPageState extends State<AlbumbPage> {
  @override
  void initState() {
    super.initState();
    context.read<Homeprovider>().getAlbumb(); 
    
  }

  @override
  Widget build(BuildContext context) {
    var pw = context.watch<Homeprovider>(); 
    var pr = context.read<Homeprovider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Albumb Page"),
      ),
      body: ListView.builder(
              itemCount: pw.albumb.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(pr.albumb[index].title!),
                  subtitle: Text("ID: ${pr.albumb[index].id.toString()}"),
                );
              },
            ),
    );
  }
}
