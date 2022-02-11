import 'package:flutter/material.dart';
import 'package:split_template/models/splash_models.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  static const routeName = "'/splash";
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as SplassArguments;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Splash'),
          actions: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Text(data.title.isNotEmpty ? data.title : ""),
            Text(data.message.isNotEmpty ? data.message : ""),
          ],
        ));
  }
}
