import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyCarousel extends StatefulWidget {
  @override
  _MyCarouselState createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  int activeIndex = 0;
  List<String> urlImages = [
    'https://www.shutterstock.com/image-photo/muscular-man-showing-muscles-on-260nw-1686329977.jpg',
    'https://media.istockphoto.com/id/612262390/photo/body-building-workout.jpg?s=612x612&w=0&k=20&c=zsRgRf3tuStA7dN5bdFS_x1ud-XdU-dJC7B6iuq_AZk=',
    'https://media.istockphoto.com/id/479009182/photo/silhouette-of-a-strong-fighter.jpg?s=612x612&w=0&k=20&c=eqC_1o48WNIxNZIyJrHl8nDLmYC7RtSKq1lJVmDS9GU=',
    'https://t3.ftcdn.net/jpg/01/83/37/72/360_F_183377230_aM8xRw22OMCnbWXYRajuZdAuV94InnkD.jpg',
    'https://wallpapercave.com/wp/wc1683148.jpg',
    'https://img.favpng.com/4/23/9/natural-bodybuilding-1080p-exercise-desktop-wallpaper-png-favpng-5z2Yt1SbkdiykDK3Yzn06iQcE.jpg'
  ];

  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CarouselSlider.builder(
            itemCount: urlImages.length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = urlImages[index];
              return buildImage(urlImage, index);
            },
            options: CarouselOptions(
              height: 250,
              autoPlay: false,
              enlargeCenterPage: true,
              autoPlayInterval: Duration(seconds: 3),
              onPageChanged: (index, reason) =>
                  setState(() => activeIndex = index),
            ),
          ),
        ),
        SizedBox(height: 10),
        buildIndicator(),
      ],
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
    margin: EdgeInsets.only(left: 10, right: 10),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Image.network(
        urlImage,
        fit: BoxFit.cover,
      ),
    ),
  );

  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: urlImages.length,
    effect: JumpingDotEffect(
      dotWidth: 10,
      dotHeight: 10,
      dotColor: Colors.green,
      activeDotColor: Colors.white,
    ),
  );
}