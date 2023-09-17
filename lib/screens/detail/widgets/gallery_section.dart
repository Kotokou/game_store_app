import 'package:flutter/material.dart';
import 'package:game_store_app/configs/dimensions.dart';
import 'package:game_store_app/models/game_model.dart';

class GallerySection extends StatelessWidget {
  final GameModel game;
  const GallerySection(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.dim_200,
      padding: const EdgeInsets.symmetric(vertical: Dimensions.dim_20),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: Dimensions.dim_25),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => SizedBox(
          width: 250,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(Dimensions.dim_15),
            child: Image.asset(
              game.images[index],
              fit: BoxFit.cover,
            ),
          ),
        ),
        separatorBuilder: (context, index) =>
            const SizedBox(width: Dimensions.dim_15),
        itemCount: game.images.length,
      ),
    );
  }
}
