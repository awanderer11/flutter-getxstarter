import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtest/controller.dart';

void main() => runApp(GetMaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(context) {
    final Controllerku c = Get.put(Controllerku());
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text('Click: ${c.count}'),
        ),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => Get.to(Other()),
          child: Text('go to other'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: c.increment,
      ),
    );
  }
}

class Other extends StatelessWidget {
  final Controllerku c = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("${c.count}"),
      ),
    );
  }
}
