import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_question/screens/login_screen.dart';
import 'package:interview_question/widgets/purple_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int index = 0;
  final CarouselController _carouselController = CarouselController();
  final List<Widget> myWidgets = [
    Column(
      children: [
        Text(
          'Join the best\n tailoring app',
          style: TextStyle(
              fontSize: 28.sp,
              color: Colors.white,
              fontWeight: FontWeight.w700),
        ),
        Padding(
          padding: EdgeInsets.only(top: 26.h),
          child: Text('Take your tailoring to the next level\n with Stitch Vine',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white)),
        ),
      ],
    ),
    Column(
      children: [
        Text(
          'Join the best\n tailoring app',
          style: TextStyle(
              fontSize: 28.sp,
              color: Colors.white,
              fontWeight: FontWeight.w700),
        ),
        Padding(
          padding: EdgeInsets.only(top: 26.h),
          child: Text(
              'Join the best\n tailoring app',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white)),
        ),
      ],
    ),
    Column(
      children: [
        Text(
          'Join the best\n tailoring app',
          style: TextStyle(
              fontSize: 28.sp,
              color: Colors.white,
              fontWeight: FontWeight.w700),
        ),
        Padding(
          padding: EdgeInsets.only(top: 26.h),
          child: Text(
              'Join the best\n tailoring app',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white)),
        ),
      ],
    ),
    Column(
      children: [
        Text(
          'Join the best\n tailoring app',
          style: TextStyle(
              fontSize: 28.sp,
              color: Colors.white,
              fontWeight: FontWeight.w700),
        ),
        Padding(
          padding: EdgeInsets.only(top: 26.h),
          child: Text('Take your tailoring to the next level\n with Stitch Vine',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
          ),
        ),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background_image.png'),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              top: 392.h, bottom: 45.h, left: 28.w, right: 27.w),
          child: Stack(

            children: [
              Container(
                color: Colors.white.withOpacity(0.38),
                child: Padding(
                  padding: EdgeInsets.only(top: 52.h),
                  child: CarouselSlider(
                    carouselController: _carouselController,
                    options: CarouselOptions(
                      height: 375.h,
                      onPageChanged: (index, carouselPageChangedReasons) {
                        setState(() {
                          // this.index++;
                          this.index = index;
                          if (index > 3) {
                            this.index = 0;
                          }
                        });
                      },
                    ),
                    items: myWidgets,
                  ),
                ),
              ),
              Positioned(
                child: PurpleButton(height: 50.h,width: 230.w,text: 'Get started',fontWeight: FontWeight.w600,radius: 8.r,onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                },),
                bottom: 88.h,
                left: 45,
              ),
              Positioned(
                  bottom: 41.h,
                  left: 133.w,
                  child: SmoothPageIndicator(
                    count: 4,
                    controller: PageController(initialPage: index),
                    effect: SwapEffect(
                      dotHeight: 6.h,
                      dotWidth: 6.w,
                      activeDotColor: Color(0xFF1D1F22),
                      dotColor: const Color(0xFFF6F6F6),
                    ), // your// preferred effect
                    onDotClicked: (index) {
                      _carouselController.jumpToPage(index);
                      // this.index = index;
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
