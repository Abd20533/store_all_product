import 'package:flutter/material.dart';
import 'package:store_all_things/my_import.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        // backgroundColor: Colors.transparent,
        title: Text(
          "Home",
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppMyColor.grey),
        ),
      ),
    );
  }
}
