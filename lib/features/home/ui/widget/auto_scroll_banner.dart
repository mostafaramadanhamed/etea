

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AutoScrollBanner extends StatelessWidget {


  const AutoScrollBanner({super.key});

  static final List<String> imgList = [
    'https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&w=600',
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlayInterval: const Duration(seconds: 6),
        autoPlay: true,
        aspectRatio: 1.8,
        enlargeCenterPage: true,
      ),
      items: imgList
          .map((item) => Center(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(item, fit: BoxFit.cover, width: 1000)),
              ))
          .toList(),
    );
  }
}