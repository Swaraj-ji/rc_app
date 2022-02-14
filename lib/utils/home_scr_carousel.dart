import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OurCarouselSlider extends StatefulWidget {
  final bool autoPlay;
  final List<Widget> wid;
  const OurCarouselSlider({required this.wid, this.autoPlay = false});

  @override
  State<OurCarouselSlider> createState() => _OurCarouselSliderState();
}

class _OurCarouselSliderState extends State<OurCarouselSlider> {
  int _current = 0;

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      // Column, because it return Carousel Slider and 5 indicator dots.
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            aspectRatio: 2.0,
            autoPlay: widget.autoPlay,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          items: widget.wid.map(
            (i) {
              return Builder(
                builder: (BuildContext context) {
                  return i;
                },
              );
            },
          ).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.wid.asMap().entries.map((entry) {
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
                      .withOpacity(_current == entry.key ? 0.9 : 0.4),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
