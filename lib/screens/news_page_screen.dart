import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/assets/app_theme.dart';

class NewsPageScreen extends StatelessWidget {
  const NewsPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lighterWhite,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 450,
              child: Stack(
                children: [
                  Image(
                    image: AssetImage('assets/svg/rectangle.png'),
                    fit: BoxFit.cover,
                    height: 1170,
                    width: double.infinity,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(42),
                          topRight: Radius.circular(42),
                        ),
                        color: lighterWhite,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: paddingHorizontal,
                        vertical: 60,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(borderRadius),
                              border: Border.all(color: white),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: SvgPicture.asset(
                                  'assets/svg/arrow_back_icon.svg'),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(borderRadius),
                              border: Border.all(color: white),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset(
                                'assets/svg/bookmark_white_icon.svg'),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: paddingHorizontal,
              ),
              transform: Matrix4.translationValues(0, -14, 0),
              child: Text(
                'Unravel mysteries\nof the Maldives',
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: paddingHorizontal,
                vertical: 16,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 27,
              ),
              height: 54,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  borderRadius,
                ),
                border: Border.all(
                  color: borderColor,
                ),
              ),
              child: const Row(
                children: [
                  CircleAvatar(
                    radius: 13,
                    backgroundColor: blue,
                    backgroundImage: AssetImage('assets/svg/avatar_2.png'),
                  ),
                  SizedBox(
                    width: 27,
                  ),
                  Text(
                    'Keanu Carpent May 17 • 8 min read',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'Gellix',
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: gray,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: paddingHorizontal,
              ),
              child: Text(
                "Just say anything, George, say what ever's natural, the first thing that comes to your mind. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. You do? Yeah, it's 8:00. Hey, McFly, I thought I told you never",
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 450,
            )
          ],
        ),
      ),
    );
  }
}




//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: 1170,
//                 child: Stack(
//               children: [
//                 const FullScreenSlider(),
//                 Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Container(
//                     height: 40,
//                     width: double.infinity,
//                     decoration: const BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(42),
//                           topRight: Radius.circular(42),
//                         ),
//                         color: lighterWhite),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.topCenter,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: paddingHorizontal,
//                       vertical: 60,
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           height: 50,
//                           width: 50,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(borderRadius),
//                             border: Border.all(color: white),
//                           ),
//                           padding: const EdgeInsets.all(12),
//                           child: SvgPicture.asset(
//                               'assets/svg/arrow_back_icon.svg'),
//                         ),
//                         Container(
//                           height: 50,
//                           width: 50,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(borderRadius),
//                             border: Border.all(color: white),
//                           ),
//                           padding: const EdgeInsets.all(12),
//                           child: SvgPicture.asset(
//                             'assets/bookmark_white_icon.svg',
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.symmetric(
//               horizontal: paddingHorizontal,
//             ),
//             transform: Matrix4.translationValues(0, -14, 0),
//             child: Text(
//               'Unravel mysteries\nof the Maldives',
//               style: TextStyle(
//                   fontFamily: 'Gellix',
//                   fontWeight: FontWeight.w700,
//                   fontSize: 32),
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.symmetric(
//               horizontal: paddingHorizontal,
//               vertical: 16,
//             ),
//             padding: EdgeInsets.symmetric(
//               horizontal: 27,
//             ),
//           ),
//         ],
//       )),
//     );
//   }
// }

// final List<AssetImage> imageList = [
//   AssetImage('assets/svg/rectangle.png'),
// ];

// class FullScreenSlider extends StatefulWidget {
//   const FullScreenSlider({super.key});

//   @override
//   State<FullScreenSlider> createState() => _FullScreenSliderState();
// }

// class _FullScreenSliderState extends State<FullScreenSlider> {
//   int _current = 1;
//   final CarouselController _controller = CarouselController();

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         CarouselSlider(
//           carouselController: _controller,
//           options: CarouselOptions(
//             height: 1170,
//             viewportFraction: 1.0,
//             enlargeCenterPage: false,
//             onPageChanged: (index, reason) {
//               setState(() {
//                 _current = index;
//               });
//             },
//             initialPage: _current,
//           ),
//           items: imageList
//               .map(
//                 (assetImage) => Center(
//                   child: Image(
//                     image: assetImage,
//                     fit: BoxFit.cover,
//                     height: 1170,
//                     width: double.infinity,
//                   ),
//                 ),
//               )
//               .toList(),
//         ),
//         Align(
//           alignment: Alignment.bottomCenter,
//           child: Padding(
//             padding: const EdgeInsets.only(bottom: 52),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: imageList
//                   .asMap()
//                   .entries
//                   .map(
//                     (entry) => GestureDetector(
//                       onTap: () => _controller.animateToPage(entry.key),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 6,
//                         ),
//                         child: SvgPicture.asset(
//                           _current == entry.key
//                               ? 'assets/svg/carousel_indicator_enabled.svg'
//                               : 'assets/carousel_indicator_disabled.svg',
//                         ),
//                       ),
//                     ),
//                   )
//                   .toList(),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
