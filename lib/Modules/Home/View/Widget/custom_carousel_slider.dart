import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:sizer/sizer.dart';

import '../../../Widgets/stack_for_cards.dart';

class MyCarouselSlider extends StatefulWidget {
  MyCarouselSlider({super.key, required this.height, required this.imagesList});
  final List<Map> imagesList;

  final double height;

  @override
  State<MyCarouselSlider> createState() => _MyCarouselSliderState();
}

class _MyCarouselSliderState extends State<MyCarouselSlider> {
  final CarouselController carouselController = CarouselController();

  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    // var cubit = AboutAppCubit.get(context);
    // List <String> Images =[];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InkWell(
                onTap: () {
                  carouselController.previousPage(
                    curve: Curves.linear,
                    duration: const Duration(milliseconds: 300),
                  );
                },
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 6.w,
                )),
            Expanded(
              child: Container(
                height: widget.height,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: CarouselSlider(
                  disableGesture: false,
                  items: widget.imagesList
                      .map<Widget>(
                        (e) => Container(
                          height: double.infinity,
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 1.w),
                          decoration: BoxDecoration(
                              color: AppColors.purple,
                              borderRadius: BorderRadius.circular(2.w)),
                          child: StackForCards(
                            e: e,
                            height: widget.height,
                          ),
                        ),
                      )
                      .toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: 2,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentindex = index;
                      });
                    },
                  ),
                ),
              ),
            ),
            InkWell(
                onTap: () {
                  carouselController.nextPage(
                    curve: Curves.linear,
                    duration: const Duration(milliseconds: 300),
                  );
                },
                child: Icon(Icons.arrow_forward_ios_outlined, size: 6.w)),
          ],
        ),
        DotsIndicator(
          dotsCount: widget.imagesList.length,

          // cubit.getSliderModel!.data == null
          //     ? 1
          //     : cubit.getSliderModel!.data!.images!.length,
          position: _currentindex,
          // onTap: (index) {

          //     _currentindex = index;
          //  setState(() {

          //  });
          // },
          decorator: const DotsDecorator(
            color: Colors.grey,
            activeColor: AppColors.purple,
            size: Size.square(8.0),
 spacing: EdgeInsets.all(7),
            activeSize: Size(20.0, 10.0),
          ),
        ),
      ],
    );
  }
}
