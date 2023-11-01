import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/assets/app_theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lighterWhite,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 70,
                      width: 70,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          borderRadius,
                        ),
                        child: const Image(
                          image: AssetImage('assets/svg/profile_avatar.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 32.4,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Elly Byers',
                                style: TextStyle(
                                  fontFamily: 'Gellix',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: black,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Author & Writer',
                                style: TextStyle(
                                    fontFamily: 'Gellix',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: black),
                              ),
                            ],
                          ),
                          Container(
                            constraints: BoxConstraints(
                              maxHeight: 42,
                              maxWidth: 109,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(borderRadius),
                              color: blue,
                            ),
                            child: Center(
                              child: Text(
                                'Following',
                                style: TextStyle(
                                    fontFamily: 'Gellix',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 27,
                ),
                Text(
                  'Every piece of chocolate I ever ate is getting back at me.. desserts are very revengeful..',
                  style: TextStyle(
                      fontFamily: 'Gellix',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: gray),
                ),
                SizedBox(
                  height: 27,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 30,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(borderRadius),
                    color: black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              '54.21k',
                              style: TextStyle(
                                  fontFamily: 'Gellix',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: white),
                            ),
                            Text(
                              'Followers',
                              style: TextStyle(
                                fontFamily: 'Gellix',
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 38,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: lightBlue,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              '2.11k',
                              style: TextStyle(
                                fontFamily: 'Gellix',
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: white,
                              ),
                            ),
                            Text(
                              'Posts',
                              style: TextStyle(
                                fontFamily: 'Gellix',
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 38,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: lightBlue,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              '36.40k',
                              style: TextStyle(
                                fontFamily: 'Gellix',
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: white,
                              ),
                            ),
                            Text(
                              'Following',
                              style: TextStyle(
                                fontFamily: 'Gellix',
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 27,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Elly's Post",
                      style: TextStyle(
                          fontFamily: 'Gellix',
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: black),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                          fontFamily: 'Gellix',
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: blue),
                    ),
                  ],
                ),
                SizedBox(
                  height: 27,
                ),
                SizedBox(
                  height: 100,
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(borderRadius),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 24,
                              spreadRadius: 0,
                              offset: const Offset(0, 3),
                              color: black.withOpacity(0.051),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(borderRadius),
                          child: Image(
                            image: AssetImage('assets/svg/post_politics.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'News: Politics',
                              style: TextStyle(
                                fontFamily: 'Gellix',
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: gray,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Iran\'s getting raging protests Fifth Iranian paramilitary me...',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: 'Gellix',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: black),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/svg/calendar_icon.svg',
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '16th May',
                                      style: TextStyle(
                                          fontFamily: 'Gellix',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 11,
                                          color: gray),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/svg/time_icon.svg',
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '09 : 32 pm',
                                      style: TextStyle(
                                          fontFamily: 'Gellix',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 11,
                                          color: gray),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 100,
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(borderRadius),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 24,
                              spreadRadius: 0,
                              offset: const Offset(0, 3),
                              color: black.withOpacity(0.051),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(borderRadius),
                          child: Image(
                            image: AssetImage('assets/svg/post_science.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'News: Science',
                              style: TextStyle(
                                fontFamily: 'Gellix',
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: gray,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Putin to host ceremony annexing occupied Ukraina...',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: 'Gellix',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: black),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/svg/calendar_icon.svg',
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '11th May',
                                      style: TextStyle(
                                          fontFamily: 'Gellix',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 11,
                                          color: gray),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/svg/time_icon.svg',
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '10 : 15 am',
                                      style: TextStyle(
                                          fontFamily: 'Gellix',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 11,
                                          color: gray),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Popular From Elly',
                      style: TextStyle(
                          fontFamily: 'Gellix',
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: black),
                    )
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 143,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 143,
                        width: 248,
                        margin: EdgeInsets.only(
                          right: 20,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(borderRadius),
                          child: Image(
                            image: AssetImage('assets/svg/popular_pic_1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
