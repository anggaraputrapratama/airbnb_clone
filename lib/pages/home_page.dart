import 'package:airbnb_clone/widgets/city_widgets.dart';
import 'package:airbnb_clone/widgets/fade_app_bar.dart';
import 'package:airbnb_clone/widgets/header.dart';
import 'package:airbnb_clone/widgets/live_anywhere_widgets.dart';
import 'package:flutter/material.dart';

import '../widgets/hero_banner.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController _scrollController;
  double _scrollControllerOffset = 0.0;

  void _scrollListener() {
    setState(() {
      _scrollControllerOffset = _scrollController.offset;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: const [
              HeroBanner(),
              Header('Explore Nearby'),
              CitiesGrid(),
              Header("Live Anywhere"),
              LiveAnywhereList()
            ],
          ),
          FadeAppBar(scrollOffset: _scrollControllerOffset)
        ],
      ),
    );
  }
}
