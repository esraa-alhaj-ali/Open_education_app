import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:open_Education/Modules/Widgets/stack_for_cards.dart';
import 'package:open_Education/constant/Images-Routes.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:sizer/sizer.dart';

class ScheduleCarouselSlider extends StatefulWidget {
  const ScheduleCarouselSlider({
    super.key,
  });

  @override
  State<ScheduleCarouselSlider> createState() => _ScheduleCarouselSliderState();
}

class _ScheduleCarouselSliderState extends State<ScheduleCarouselSlider> {
  List list = [1, 2, 3, 4];
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                _currentindex = index;
              });
            },
            height: 12.5.h,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.5,
          ),
          items: list.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return StackForCards(
                  e: {
                    "title": "اسم البرنامج",
                    "image": "${Images.rootImages}/temp6.png",
                  },
                  height: 0.h,
                );
              },
            );
          }).toList(),
        ),
        DotsIndicator(
          dotsCount: list.length,
          position: _currentindex,
          decorator: const DotsDecorator(
            color: Colors.grey, 
            activeColor: AppColors.purple ,  
            size: Size.square(8.0),

            activeSize: Size(20.0, 10.0),
            spacing: EdgeInsets.all(7.0),
          ),
        ),
      ],
    );
  }
}
