import 'package:flutter/Material.dart';
import 'package:flutter_planets/ui/home/gradient_bar.dart';

import 'home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GradientBar("Planets App"),
          HomePageBody(),
        ],
      ),
    );
  }
}
