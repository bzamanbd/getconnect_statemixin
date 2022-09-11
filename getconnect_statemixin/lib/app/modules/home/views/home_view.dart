import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
        centerTitle: true,
      ),
      body: controller.obx(
        (data) => ListView.builder(
          itemCount: data?.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 32,
                      horizontal: 8,
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            NetworkImage(data![index]['picture']['large']),
                      ),
                      title: Text(
                        data[index]['name']['title'] +
                            " " +
                            data[index]['name']['first'] +
                            " " +
                            data[index]['name']['last'],
                      ),
                      subtitle: Text(data[index]['email']),
                      trailing: Text("age: ${data[index]['dob']['age']}"),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
