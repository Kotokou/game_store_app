import 'package:flutter/material.dart';
import 'package:game_store_app/configs/dimensions.dart';
import 'package:game_store_app/models/game_model.dart';
import 'package:game_store_app/screens/detail/detail_screen.dart';

class PopularGame extends StatelessWidget {
  PopularGame({super.key});
  final List<GameModel> games = GameModel.games();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimensions.dim_200,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimensions.dim_25,
          vertical: Dimensions.dim_20,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailScreen(game: games[index]),
            ),
          ),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimensions.dim_15),
            ),
            child: Container(
              padding: const EdgeInsets.all(Dimensions.dim_5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.dim_15),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Dimensions.dim_15),
                child: Image.asset(games[index].bgImage),
              ),
            ),
          ),
        ),
        separatorBuilder: (context, index) =>
            const SizedBox(width: Dimensions.dim_10),
        itemCount: games.length,
      ),
    );
  }
}
