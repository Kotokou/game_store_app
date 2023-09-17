import 'package:flutter/material.dart';
import 'package:game_store_app/configs/app_theme.dart';
import 'package:game_store_app/configs/dimensions.dart';
import 'package:game_store_app/models/game_model.dart';

class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
  final GameModel game;
  final double expandedHeight;
  final double roundedContainerHeight;

  DetailSliverDelegate({
    required this.game,
    required this.expandedHeight,
    required this.roundedContainerHeight,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        Image.asset(
          game.bgImage,
          width: MediaQuery.of(context).size.width,
          height: expandedHeight,
          fit: BoxFit.cover,
        ),
        Positioned(
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top,
                left: Dimensions.dim_25,
                right: Dimensions.dim_25,
              ),
              padding: const EdgeInsets.all(Dimensions.dim_10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          top: expandedHeight - roundedContainerHeight - shrinkOffset,
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: roundedContainerHeight,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.dim_30),
                topRight: Radius.circular(Dimensions.dim_30),
              ),
            ),
            child: Container(
              alignment: Alignment.center,
              width: Dimensions.dim_60,
              height: Dimensions.dim_5,
              color: AppTheme.primary,
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
