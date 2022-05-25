import 'package:flutter/material.dart';

import '../../core/core.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: Navigator.of(context).pop,
        backgroundColor: AppTheme.primaryColor,
        tooltip: 'Go Back',
        child: const Icon(Icons.arrow_downward),
      ),
      body: Center(
        child: Image.asset(
          AppAssets.infoImage,
          width: 500,
        ),
      ),
    );
  }
}
