import 'package:flutter/material.dart';
import 'package:news_app/assets/app_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        children: [
          Row(children: [
            Container(
              height: 49,
              width: 49,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadius),
                  color: blue,
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://cdn3d.iconscout.com/3d/premium/thumb/man-avatar-6299539-5187871.png',
                    ),
                  )),
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
              height: 14,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(
                        right: 38,
                      ),
                      child: Text(
                        '#Health',
                        style: TextStyle(color: gray),
                      ),
                    );
                  })),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 304,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(
                    right: 20,
                  ),
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
                        )
                      ]),
                  child: Column(
                    children: [
                      Container(
                        height: 164,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(borderRadius),
                          image: const DecorationImage(
                              image: AssetImage('assets/svg/maldives.png'),
                              fit: BoxFit.cover),
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
                              fontSize: 15),
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
                                    AssetImage('assets/svg/icon_avatar.png'),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                              borderRadius: BorderRadius.circular(borderRadius),
                              color: lightWhite,
                            ),
                            child:
                                SvgPicture.asset('assets/svg/share_icon.svg'),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
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
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
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
                          spreadRadius: 0.0),
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
                            image: AssetImage('assets/svg/top_trending.png'),
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
