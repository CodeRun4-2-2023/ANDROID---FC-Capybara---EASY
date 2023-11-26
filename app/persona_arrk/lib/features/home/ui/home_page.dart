import 'package:flutter/material.dart';
import 'package:persona_arrk/constants/colors.dart';
import 'package:persona_arrk/constants/styles.dart';
import 'package:persona_arrk/utils/additional_button.dart';
import 'package:persona_arrk/utils/widgets/custom_widgets.dart';
import 'navigation_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    return Column(
      children: [
        getTitleWidgets(),
        addVerticalSpace(20),
        addNavigationMap(screenWidth,screenHeight),
        addVerticalSpace(15),
        const Row(
            children: [
            Text(
              "Your Favorites ",
              style: kMediumWhiteTextStyle,
            ),
          ]
        ),
        addVerticalSpace(24),
        getFavoritesWidgets(screenWidth / 2.3),
        addVerticalSpace(10),
        getMenuButtons(),
      ],
    );
  }

  Widget getTitleWidgets() {
    return Column(
      children: [
        addVerticalSpace(24),
        Image.asset('images/Logo.png'),
        addVerticalSpace(15),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Navigation ",
              style: kMediumWhiteTextStyle,
            ),
          ],
        ),
      ],
    );
  }

  getFavoritesWidgets(double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 160,
          width: 180,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/WidgetBackground.png'))),
          child: Stack(
            children: [
              Positioned.fill(child: Image.asset('images/Fan.png', scale: 0.7)),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  addVerticalSpace(1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('images/SeatHeater.png', scale: 0.8),
                      Image.asset('images/steeringWheel.png', scale: 0.8)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/-.png'),
                      addHorizontalSpace(12),
                      Image.asset('images/21temp.png'),
                      addHorizontalSpace(12),
                      Image.asset('images/+.png')
                    ],
                  ),
                  Image.asset('images/Climate.png'),
                  addVerticalSpace(1)
                ],
              ),
            ],
          ),
        ),


        Container(
          height: 160,
          width: 180,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/WidgetBackground.png'))),
          child: Stack(
            children: [
              Positioned.fill(child: Image.asset('images/map.png',scale:1.05)),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  addVerticalSpace(1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('images/NavigationBackground.png'),
                    ],
                  ),
                  Image.asset('images/Navigation.png'),
                  addVerticalSpace(1)
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  getMenuButtons() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AdditionalButton(iconName: 'Profile'),
        AdditionalButton(iconName: 'Home'),
        AdditionalButton(iconName: 'Menu'),
      ],
    );
  }

  addNavigationMap(double width, double height) {
    return Column(
      children: [
        Container(
          height: height/2.2,
          width: width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/Rectangle.png'))),
          child: Stack(
            children: [
              //Positioned.fill(child: Image.asset('images/Fan.png', scale: 0.7)),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  addHorizontalSpace(150),
                  addVerticalSpace(40),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                     /* Row(

                        children: [
                          addHorizontalSpace(100),
                          Image.asset('images/DestinationBackground.png'),
                        ],
                      ),
                      */
                      addVerticalSpace(50),
                      Row(
                        children: [
                          addHorizontalSpace(100),

                          Image.asset('images/maskgroup2.png'),
                        ],
                      ),
                      Row(
                        children: [
                          addHorizontalSpace(100),

                          Image.asset('images/GPS.png'),
                        ],
                      ),
                      addVerticalSpace(10),
                      Row(
                        children: [
                          addHorizontalSpace(100),
                          Image.asset('images/maskgroup.png'),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(

                        children: [
                          addHorizontalSpace(300),
                          Image.asset('images/-.png'),
                        ],
                      ),
                      addVerticalSpace(30),
                      Row(
                        children: [
                          addHorizontalSpace(300),

                          Image.asset('images/+.png'),
                        ],
                      ),
                    ],
                  ),

                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}