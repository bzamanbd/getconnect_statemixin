import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: controller.obx(
        (data) => ListView.builder(
          itemCount: data?.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: SizedBox(
                        width: 60,
                        child: Image.network(
                          "${data![index]['image']}",
                          fit: BoxFit.fill,
                        ),
                      ),
                      title: Text("${data[index]['title']}"),
                      subtitle: Text("${data[index]['category']}"),
                      trailing: Text("price: \$ ${data[index]['price']}"),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
