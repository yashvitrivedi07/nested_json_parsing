import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/homeProvider.dart';
import 'package:provider/provider.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  void initState() {
    super.initState();
    context.read<Homeprovider>().getUser();
      print("User data fetched: ${context.read<Homeprovider>().user}");

  }
  @override
  Widget build(BuildContext context) {
    var pw = context.watch<Homeprovider>();
    var pr = context.read<Homeprovider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Page"),
      ),

      body: ListView.builder(
        itemCount: pw.user.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(pr.user[index].addressModal!.city!),
            subtitle: Text(pr.user[index].companyModal!.name!),
          );
        },
      ),
    );
  }
}