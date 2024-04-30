import 'package:examweektwo/consts/strings.dart';
import 'package:examweektwo/views/categorydetail.dart';
import 'package:examweektwo/widgets/customGridView.dart';
import 'package:examweektwo/widgets/customappbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String appBarTitle;

  const HomeScreen({super.key, required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppBar(context, appBarTitle),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: CustomGridview(
                data,
                orientation == Orientation.portrait ? 2 : 4,
                data.length,
              ),
            ),
          );
        },
      ),
    );
  }
}
