import 'package:carousel_slider/carousel_slider.dart';
import 'package:cute_app/src/core/constants/image_urls.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(ImageUrls.gallery, height: 60),
            Image.asset(ImageUrls.home, height: 60),
            Image.asset(ImageUrls.settings, height: 60),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: size.height * 0.3,
                child: Image.asset(ImageUrls.mainCat),
              ),
            ),
            SizedBox(height: size.height * 0.1),
            CarouselSlider.builder(
              itemCount: ImageUrls.carousel.length,
              itemBuilder: (_, index, __) {
                return SizedBox(
                  height: size.height * 0.2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(ImageUrls.carousel[index]),
                  ),
                );
              },
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
