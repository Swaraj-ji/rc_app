import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rc_app/constants.dart';
import 'package:rc_app/utils/drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> photos = [
    'https://www.a1wineandspirit.com/media/yhwie5wr/liquor-large.jpg',
    'https://images.unsplash.com/photo-1526894198609-10b3cdf45c52',
    'https://cdn.shopify.com/s/files/1/0284/1372/2703/files/Teremana-social-share_grande.jpg',
    'https://i.pinimg.com/originals/7f/da/d6/7fdad60a903375223b8b07b0ed697a07.jpg',
    'https://i2-prod.buzz.ie/incoming/article24278921.ece/ALTERNATES/s1200c/0_peaky-blinders-season-5.jpg',
  ];

  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home',
            style: kAppbarTitleStyle,
          ),
        ),
        drawer: OurDrawer(),
        body: Column(
          children: [
            const Text(
              'Robotics Club',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'SourceSerifExtraBold',
              ),
            ),
            const Text(
              'Madan Mahon Malaviya University of Technology',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            OurCarouselSlider(),
          ],
        ),
      ),
    );
  }
}

class OurCarouselSlider extends StatelessWidget {
  List<String> photos = [
    'https://www.a1wineandspirit.com/media/yhwie5wr/liquor-large.jpg',
    'https://images.unsplash.com/photo-1526894198609-10b3cdf45c52',
    'https://cdn.shopify.com/s/files/1/0284/1372/2703/files/Teremana-social-share_grande.jpg',
    'https://i.pinimg.com/originals/7f/da/d6/7fdad60a903375223b8b07b0ed697a07.jpg',
    'https://i2-prod.buzz.ie/incoming/article24278921.ece/ALTERNATES/s1200c/0_peaky-blinders-season-5.jpg',
  ];

  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            //aspectRatio: 2.0,
            height: 200.0,
            autoPlay: true,
            enlargeCenterPage: true,
          ),
          items: [photos[0], photos[1], photos[2], photos[3], photos[4]].map(
            (i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: Image.network(
                      '$i',
                      fit: BoxFit.cover,
                      errorBuilder: (BuildContext context, Object exception,
                          StackTrace? stackTrace) {
                        return Image.asset(
                          'images/nointernet.gif',
                        );
                      },
                    ),
                  );
                },
              );
            },
          ).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: photos.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 5.0,
                height: 5.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
