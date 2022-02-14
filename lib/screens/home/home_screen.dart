import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'components/product_grid_view.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'Experience your advertisement\n with us',
      'You always be happy',
      'Join to the best challenge ',
      'Everything is possible if you are\n with the right company',
    ];
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          margin: const EdgeInsets.only(top: 12, bottom: 5),
          padding: const EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(30),
          ),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search here',
              suffixIcon: Icon(Icons.search),
            ),
          ),
        ),
        leading: IconButton(
          padding: const EdgeInsets.only(bottom: 10, left: 8),
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_bag_outlined,
            color: Colors.green,
            size: 50,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: Column(
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 120,
              autoPlay: true,
              aspectRatio: 16 / 9,
            ),
            itemCount: images.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.all(5),
              width: 400,
              child: Text(
                images[itemIndex],
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          const Expanded(child: ProductGridView()),
        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
