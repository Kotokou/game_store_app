import 'package:flutter/material.dart';
import 'package:game_store_app/configs/dimensions.dart';
import 'package:game_store_app/models/game_model.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  final GameModel game;
  const Header(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.dim_25),
      child: Row(
        children: [
          Image.asset(
            game.icon,
            width: 80,
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                game.name,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: Dimensions.dim_10),
              Text(
                game.type,
                style: GoogleFonts.poppins(
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              const SizedBox(height: Dimensions.dim_5),
              Row(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: Dimensions.dim_15,
                      ),
                      Text(
                        game.score.toString(),
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: Dimensions.dim_30),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.red,
                        size: Dimensions.dim_15,
                      ),
                      Text(
                        '${game.download.toString()} k',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
