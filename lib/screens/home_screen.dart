import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';
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
                      child: Text('#Health'),
                    );
                  })),
          const SizedBox(
            height: 30,
          )
        ]));
  }
}
