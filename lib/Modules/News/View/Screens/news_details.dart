import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

import 'package:flutter/material.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:open_Education/Modules/Widgets/app_scaffolds.dart';

import 'package:sizer/sizer.dart';
import 'package:video_player/video_player.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({Key? key, required this.news, required this.title})
      : super(key: key);

  final String news;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppScaffolds.pagesScaffold(
        appbarTitle: "news".tr(context),
        context: context,
        body: Column(
          children: <Widget>[
            SizedBox(width: 0.0, height: 1.5.h),
            Expanded(
                child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    MyCarouselSlider(height: 20.h),
                    SizedBox(width: 0.0, height: 2.h),
                    Text(
                      title,
                      style: AppTextStyles.titlesMeduim,
                    ),
                    SizedBox(width: 0.0, height: 1.h),
                    Text(
                      news,
                      style: AppTextStyles.explanatoryText.copyWith(
                          height: 0.2.h, color: Colors.black.withOpacity(0.7)),
                    )
                  ],
                ),
              ),
            ))
          ],
        ));
  }
}

class MyCarouselSlider extends StatefulWidget {
  MyCarouselSlider({super.key, required this.height});

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
    List<String> videos_links = [
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'
    ];
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
                  size: 5.w,
                )),
            Expanded(
              child: Container(
                height: widget.height,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: CarouselSlider(
                  disableGesture: false,
                  items: videos_links
                      .map<Widget>(
                        (e) => Video(VideoLink: e),
                      )
                      .toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                    scrollPhysics: const BouncingScrollPhysics(),
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
                child: Icon(Icons.arrow_forward_ios_outlined, size: 5.w)),
          ],
        ),
        DotsIndicator(
          dotsCount: videos_links.length,

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
            color: Colors.grey, // Inactive dot color
            activeColor: AppColors.splashGradientPurple, // Active dot color
            size: Size.square(10.0),

            activeSize: Size(20.0, 10.0),
            spacing: EdgeInsets.all(5.0),
          ),
        ),
      ],
    );
  }
}

class Video extends StatefulWidget {
  const Video({super.key, required this.VideoLink});

  final String VideoLink;

  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  VideoPlayerController? _videoPlayerController;
  bool _isBuffering = false;

  @override
  void initState() {
    super.initState();

    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.VideoLink))
          ..initialize().then((value) {
            setState(() {});
          });

    _videoPlayerController!.addListener(() {
      setState(() {
        _isBuffering = _videoPlayerController!.value.isBuffering;
      });
      print(_isBuffering);
    });
  }

  @override
  void dispose() {
    _videoPlayerController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 1.w),
          decoration: BoxDecoration(
              color: AppColors.grey, borderRadius: BorderRadius.circular(2.w)),
          child: _videoPlayerController!.value.isInitialized
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(2.w),
                  child: AspectRatio(
                    aspectRatio: _videoPlayerController!.value.aspectRatio,
                    child: VideoPlayer(_videoPlayerController!),
                  ),
                )
              : const Center(child: CircularProgressIndicator()),
        ),
        if (_isBuffering) const CircularProgressIndicator(),
        InkWell(
          child: Icon(
            _videoPlayerController!.value.isPlaying
                ? Icons.pause
                : Icons.play_arrow,
            size: 10.w,
            color: Colors.white,
          ),
          onTap: () {
            setState(() {
              _videoPlayerController!.value.isPlaying
                  ? _videoPlayerController!.pause()
                  : _videoPlayerController!.play();
            });
          },
        ),
      ],
    );
  }
}
