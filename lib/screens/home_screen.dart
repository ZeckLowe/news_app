import 'package:flutter/material.dart';
import 'package:news_app/assets/app_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/screens/news_page_screen.dart';
import 'package:news_app/screens/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> imagePaths = [
    'assets/svg/maldives.png',
    'assets/svg/hongkong.png',
    // Add more image paths for your items here
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(children: [
              Container(
                height: 49,
                width: 49,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadius),
                  color: blue,
                  image: const DecorationImage(
                    image: AssetImage('assets/svg/user_vector.png'),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontFamily: 'Gellix',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Monday, 3 October',
                    style: TextStyle(
                      fontFamily: 'Gellix',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ]),
          ),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            width: 30,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              color: white,
              boxShadow: [
                BoxShadow(
                  color: blue.withOpacity(0.051),
                  offset: const Offset(0.0, 0.3),
                  blurRadius: 24.0,
                  spreadRadius: 0.0,
                )
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: const TextStyle(
                      fontFamily: 'Gellix',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 13,
                      ),
                      hintText: 'Search for article...',
                      border: border,
                      errorBorder: border,
                      disabledBorder: border,
                      focusedBorder: border,
                      focusedErrorBorder: border,
                      hintStyle: const TextStyle(
                          fontFamily: 'Gellix', color: lightGray, fontSize: 14),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: blue,
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/svg/search_icon.svg',
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              height: 15,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 35),
                    child: Text(
                      '#Health',
                      style: TextStyle(color: gray),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 35),
                    child: Text(
                      '#Music',
                      style: TextStyle(color: gray),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 35),
                    child: Text(
                      '#Technology',
                      style: TextStyle(color: gray),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 35),
                    child: Text(
                      '#Sports',
                      style: TextStyle(color: gray),
                    ),
                  ),
                ],
              )),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
              height: 304,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(right: 20),
                    height: 304,
                    width: 255,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(borderRadius),
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: blue.withOpacity(0.051),
                          offset: const Offset(0.0, 3.0),
                          blurRadius: 24.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewsPageScreen(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 164,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(borderRadius),
                              image: const DecorationImage(
                                image: AssetImage(
                                    'assets/svg/maldives.png'), // Use the first image
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          const Flexible(
                            child: Text(
                              'Feel the thrill on the only surf simulator in Maldives 2022',
                              style: TextStyle(
                                fontFamily: 'Gellix',
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                children: [
                                  CircleAvatar(
                                    radius: 19,
                                    backgroundColor: blue,
                                    backgroundImage: AssetImage(
                                        'assets/svg/icon_avatar.png'),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Sang Dong-Min',
                                        style: TextStyle(
                                          fontFamily: 'Gellix',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        'Sep 9, 2022',
                                        style: TextStyle(
                                          fontFamily: 'Gellix',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                height: 38,
                                width: 38,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(borderRadius),
                                  color: lightWhite,
                                ),
                                child: SvgPicture.asset(
                                    'assets/svg/share_icon.svg'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(right: 20),
                    height: 304,
                    width: 255,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(borderRadius),
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: blue.withOpacity(0.051),
                          offset: const Offset(0.0, 3.0),
                          blurRadius: 24.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 164,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(borderRadius),
                            image: const DecorationImage(
                              image: AssetImage(
                                  'assets/svg/hongkong.png'), // Use the first image
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        const Flexible(
                          child: Text(
                            'Hong Kong wins over Wall Street CEOs after lifting strict',
                            style: TextStyle(
                              fontFamily: 'Gellix',
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                CircleAvatar(
                                  radius: 19,
                                  backgroundColor: blue,
                                  backgroundImage:
                                      AssetImage('assets/svg/icon_avatar2.png'),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Pan Bong',
                                      style: TextStyle(
                                        fontFamily: 'Gellix',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      'Jan 3, 2022',
                                      style: TextStyle(
                                        fontFamily: 'Gellix',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 38,
                              width: 38,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(borderRadius),
                                color: lightWhite,
                              ),
                              child:
                                  SvgPicture.asset('assets/svg/share_icon.svg'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Short For You',
                style: TextStyle(
                    fontFamily: 'Gellix',
                    fontWeight: FontWeight.w700,
                    fontSize: 17),
              ),
              Text('View All',
                  style: TextStyle(
                    fontFamily: 'Gellix',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: blue,
                  ))
            ],
          ),
          const SizedBox(height: 19),
          SizedBox(
              height: 88,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(9),
                      margin: const EdgeInsets.only(right: 20),
                      width: 208,
                      height: 88,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(borderRadius),
                        boxShadow: [
                          BoxShadow(
                            color: blue.withOpacity(0.051),
                            offset: const Offset(0.0, 3.0),
                            blurRadius: 24.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            padding: const EdgeInsets.all(26),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(borderRadius),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('assets/svg/top_trending.png'),
                              ),
                            ),
                            child: SvgPicture.asset('assets/svg/play_icon.svg'),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Top Trending Island in 2022',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontFamily: 'Gellix',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13,
                                  ),
                                ),
                                SizedBox(
                                  height: 13,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/svg/eye_icon.svg'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '40,999',
                                      style: TextStyle(
                                        fontFamily: 'Gellix',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: gray,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(9),
                    margin: const EdgeInsets.only(right: 20),
                    width: 208,
                    height: 88,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(borderRadius),
                      boxShadow: [
                        BoxShadow(
                          color: blue.withOpacity(0.051),
                          offset: const Offset(0.0, 3.0),
                          blurRadius: 24.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          padding: const EdgeInsets.all(26),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(borderRadius),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/svg/top_trending2.png'),
                            ),
                          ),
                          child: SvgPicture.asset('assets/svg/play_icon.svg'),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'China Trading',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontFamily: 'Gellix',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset('assets/svg/eye_icon.svg'),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '40,999',
                                    style: TextStyle(
                                      fontFamily: 'Gellix',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: gray,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
