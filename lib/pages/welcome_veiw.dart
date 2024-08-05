import 'package:e_learning/pages/sign_In_Page.dart';
import 'package:e_learning/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:e_learning/component/slide_tile.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      final page = _pageController.page?.round();
      if (page != null && page != _currentPage) {
        setState(() {
          _currentPage = page;
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose(); // Dispose of the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightCyan,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.lightCyan,
        ),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                children: [
                  SlideTile(
                    imagepath: 'lib/assets/images1/pngwing.com.png',
                    header: "Fascinated Learning",
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tempor lorem at bibendum mattis. In hac habitasse platea dictumst.",
                  ),
                  SlideTile(
                    imagepath: 'lib/assets/images1/slideImage1.png',
                    header: "Empower your learning",
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tempor lorem at bibendum mattis. In hac habitasse platea dictumst.",
                  ),
                  SlideTile(
                    imagepath: 'lib/assets/images1/62863d8ca245d.png',
                    header: "Explore Our New Courses",
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tempor lorem at bibendum mattis. In hac habitasse platea dictumst.",
                  ),
                ],
                onPageChanged: (page) {
                  setState(() {
                    _currentPage = page.toInt();
                  });
                },
              ),
            ),
            _buildPageIndicator(),
          ],
        ),
      ),
    );
  }

  Widget _buildPageIndicator() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignInPage()));
                  },
                  child: Text("Skip")),
            ],
          ),
          Row(
            children: [
              for (int i = 0; i < 3; i++) _buildIndicatorDot(i),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(color: AppColors.lightTurquoise),
                  ))
            ],
          )
        ],
      ),
    );
  }

  Widget _buildIndicatorDot(int index) {
    return Center(
      child: Container(
        // color: _currentPage == index
        //     ? AppColors.lightTurquoise
        //     : Colors.transparent, // Example of background color
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          width: _currentPage == index ? 20.0 : 12.0,
          height: _currentPage == index ? 20.0 : 12.0,
          decoration: BoxDecoration(
            color:
                _currentPage == index ? AppColors.lightTurquoise : Colors.grey,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
