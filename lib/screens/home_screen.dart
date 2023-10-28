import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';

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
          Row(
            children: [
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
                  )
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
              
            ],
          ),
        ]
      ),
    );
  }
}