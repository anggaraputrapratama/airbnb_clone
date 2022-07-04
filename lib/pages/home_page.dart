import 'package:flutter/material.dart';

import '../widgets/hero_banner.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CustomScrollView(
            slivers: [HeroBanner()],
          )
        ],
      ),
    );
  }
}
