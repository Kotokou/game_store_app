import 'package:flutter/material.dart';
import 'package:game_store_app/configs/app_theme.dart';
import 'package:game_store_app/configs/constants/local_strings.dart';
import 'package:game_store_app/configs/dimensions.dart';
import 'package:game_store_app/models/game_model.dart';
import 'package:google_fonts/google_fonts.dart';

class NewestGame extends StatelessWidget {
  NewestGame({super.key});

  final List<GameModel> games = GameModel.games();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimensions.dim_25),
      child: Column(
        children: games
            .map(
              (game) => Container(
                padding: const EdgeInsets.all(Dimensions.dim_15),
                margin: const EdgeInsets.only(bottom: Dimensions.dim_20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimensions.dim_15),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(Dimensions.dim_5),
                      child: Image.asset(
                        game.icon,
                        width: Dimensions.dim_60,
                      ),
                    ),
                    const SizedBox(width: Dimensions.dim_10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            game.name,
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: Dimensions.dim_5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    game.type,
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey.withOpacity(0.8),
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        size: Dimensions.dim_15,
                                        color: Colors.amber,
                                      ),
                                      const Icon(
                                        Icons.star,
                                        size: Dimensions.dim_15,
                                        color: Colors.amber,
                                      ),
                                      const Icon(
                                        Icons.star,
                                        size: Dimensions.dim_15,
                                        color: Colors.amber,
                                      ),
                                      const Icon(
                                        Icons.star,
                                        size: Dimensions.dim_15,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: Dimensions.dim_15,
                                        color: Colors.grey.withOpacity(0.3),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: Dimensions.dim_5,
                                  horizontal: Dimensions.dim_15,
                                ),
                                decoration: BoxDecoration(
                                  color: AppTheme.primary,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text(
                                  LocalStrings.install,
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
