import 'package:flutter/material.dart';

class widget_home extends StatelessWidget {
  const widget_home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Hello"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.orange,
      ),
    );
  }
}
