import 'package:flutter/material.dart';
import 'package:split_template/views/home/home_view.dart';
import 'package:split_template/views/splash/splash_view.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/homeView',
      routes: {
        '/homeView': (context) => const HomeView(),
        SplashView.routeName: (context) => const SplashView(),
      },
    );
  }
}
