import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:latihan_statemanagement/controllers/user_controller.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(UserController());


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        centerTitle: true,
        title: Text('User Page'),
      ),
      body: FutureBuilder<dynamic>(
        future: c.getData(),
        builder: (context, snapshot) {
          List? data = snapshot.data;
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: data!.length,
              itemBuilder: (context, index) {
                final user = data[index];
                return ListTile(
                  title: Text(user['email']),
                );
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
