import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:volkhov_maps_app/theme/assets.dart';

import '../theme/themes.dart';
import '../widgets/widgets.dart';

class MapMainScreen extends StatelessWidget {
  const MapMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            BackGround(width: width, height: height),
            const MapBodyWidget(),
            const Positioned(
              top: 126,
              right: 66,
              child: RoundFlash(
                color: AppColors.yellowColor,
              ),
            ),
            const Positioned(
              top: 202,
              right: 71,
              child: RoundFlash(
                color: AppColors.blackColor,
              ),
            ),
            const Positioned(
              top: 225,
              right: 225,
              child: RoundFlash(
                color: AppColors.redColor,
              ),
            ),
            const Positioned(
              top: 345,
              right: 168,
              child: RoundFlash(
                color: AppColors.greenColor,
              ),
            ),
            Positioned(
              top: 315,
              left: 49,
              child: SvgPicture.asset(placeVector),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 14,
          color: AppColors.whiteColor,
          child: Container(
            height: 60,
            alignment: Alignment.center,
            child: BottomTabBar(),
          ),
        ),
        floatingActionButton: SizedBox(
          width: 68,
          height: 68,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: AppColors.whiteColor,
              onPressed: null,
              child: SvgPicture.asset(greyFlash),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

class MapBodyWidget extends StatelessWidget {
  const MapBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 43,
          ),
          child: CustomTextField(
            hint: 'Type here',
            prefixIcon: SvgPicture.asset(searchIcon),
            suffixIcon: SvgPicture.asset(cancelIcon),
          ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        const SquareButton(
          asset: searchLocPng,
        ),
        const SquareButton(
          asset: threeBarIconPng,
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 8,
            bottom: 34,
            right: 16,
            left: 16,
          ),
          padding: const EdgeInsets.all(16),
          width: screenWidth,
          // height: 20,
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: const [
              StationName(),
              CoordinatesWidget(),
              Divider(),
              OutletsList(),
            ],
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
