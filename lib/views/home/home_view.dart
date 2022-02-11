library home_view;

import 'package:flutter/material.dart';
import 'package:split_template/models/splash_models.dart';
import 'package:split_template/views/splash/splash_view.dart';

part 'parts/home_view_top.dart';
part 'parts/home_view_body.dart';
part 'parts/home_view_bottom.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(
              context,
              SplashView.routeName,
            ),
            icon: const Icon(Icons.home), //Icon.adaptive(Icons.home),
          ),
          IconButton(
            onPressed: () => Navigator.pushNamed(
              context,
              SplashView.routeName,
              arguments: SplassArguments(
                'SplashView',
                'message',
                2.4,
              ),
            ),
            icon: const Icon(Icons.add), //Icon.adaptive(Icons.home),
          ),
        ],
      ),
      body: Column(
        children: const [
          /// Top  Section [Split] part of [home_view_top.dart] -> AppBar, Top NavigationBar,
          HomeViewTop(),

          /// Body Section [Split] part of [home_view_body.dart] -> Body of the HomeView
          HomeViewBody(),

          /// Bottom  Section [Split] part of [home_view_bottom.dart] -> Bottom NavigationBar
          HomeViewBottom(),
        ],
      ),
    );
  }
}
