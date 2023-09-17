import 'package:flutter/material.dart';
import 'package:game_store_app/configs/dimensions.dart';
import 'package:game_store_app/models/game_model.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewSection extends StatelessWidget {
  final GameModel game;
  const ReviewSection(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimensions.dim_25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ratings and review',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'view',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: Dimensions.dim_15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                game.score.toString(),
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                ),
              ),
              const SizedBox(width: Dimensions.dim_15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: Dimensions.dim_25,
                        color: Colors.amber,
                      ),
                      const Icon(
                        Icons.star,
                        size: Dimensions.dim_25,
                        color: Colors.amber,
                      ),
                      const Icon(
                        Icons.star,
                        size: Dimensions.dim_25,
                        color: Colors.amber,
                      ),
                      const Icon(
                        Icons.star,
                        size: Dimensions.dim_25,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        size: Dimensions.dim_25,
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ],
                  ),
                  const SizedBox(height: Dimensions.dim_5),
                  Text(
                    '${game.review.toString()} review',
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: double.maxFinite,
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: const Color(0xFF5F67EA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Install',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
