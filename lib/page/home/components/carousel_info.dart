import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:makan_apa_app/model/data_dump.dart';

class CarouselInfo extends StatelessWidget {
  const CarouselInfo({
    Key key,
  }) : super(key: key);

  _listBannerImages() {
    var bannerImages = [];
    for (var image in imgTest) {
      bannerImages.add(new GestureDetector(
        onTap: () {
          print(image);
        },
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover)),
          height: 220.0,
          width: 300.0,
        ),
      ));
    }
    return bannerImages;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200.0,
        width: MediaQuery.of(context).size.width,
        child: Carousel(
          // onImageTap: ,
          dotBgColor: Colors.transparent,
          borderRadius: true,
          autoplay: true,
          images: _listBannerImages(),
        ));
  }
}