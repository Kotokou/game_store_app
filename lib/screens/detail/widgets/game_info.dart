import 'package:flutter/material.dart';
import 'package:game_store_app/configs/dimensions.dart';
import 'package:game_store_app/models/game_model.dart';
import 'package:game_store_app/screens/detail/widgets/description_section.dart';
import 'package:game_store_app/screens/detail/widgets/gallery_section.dart';
import 'package:game_store_app/screens/detail/widgets/header.dart';
import 'package:game_store_app/screens/detail/widgets/review_section.dart';

class GameInfo extends StatelessWidget {
  final GameModel game;

  const GameInfo(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: Dimensions.dim_20),
      color: Colors.white,
      child: Column(
        children: [
          Header(game),
          GallerySection(game),
          DescriptionSection(game),
          ReviewSection(game)
        ],
      ),
    );
  }
}
