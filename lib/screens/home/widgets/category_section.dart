import 'package:flutter/material.dart';
import 'package:game_store_app/configs/app_theme.dart';
import 'package:game_store_app/configs/constants/local_strings.dart';
import 'package:game_store_app/configs/dimensions.dart';
import 'package:game_store_app/screens/home/widgets/newest_game.dart';
import 'package:game_store_app/screens/home/widgets/popular_game.dart';
import 'package:google_fonts/google_fonts.dart';

class CategorySection extends StatelessWidget {
  CategorySection({super.key});

  final categories = [
    {
      'icon': Icons.track_changes_outlined,
      'color': AppTheme.ctgryBoxColor,
      'title': LocalStrings.arcabe,
    },
    {
      'icon': Icons.sports_motorsports_outlined,
      'color': AppTheme.rose,
      'title': LocalStrings.racing,
    },
    {
      'icon': Icons.casino_outlined,
      'color': AppTheme.lightBlue,
      'title': LocalStrings.strategy,
    },
    {
      'icon': Icons.sports_esports,
      'color': AppTheme.iconColor,
      'title': LocalStrings.more,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.secondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(Dimensions.dim_20),
          topRight: Radius.circular(Dimensions.dim_20),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: Dimensions.dim_150,
            padding: const EdgeInsets.all(Dimensions.dim_25),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) => Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(Dimensions.dim_10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.dim_20),
                      color: categories[index]['color'] as Color,
                    ),
                    child: Icon(
                      categories[index]['icon'] as IconData,
                      color: Colors.white,
                      size: Dimensions.dim_40,
                    ),
                  ),
                  const SizedBox(height: Dimensions.dim_10),
                  Text(
                    categories[index]['title'] as String,
                    style: GoogleFonts.poppins(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              separatorBuilder: (_, index) => const SizedBox(
                width: Dimensions.dim_30,
              ),
              itemCount: categories.length,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: Dimensions.dim_25),
            width: Dimensions.dim_410,
            child: Text(
              LocalStrings.popularGame,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: Dimensions.dim_20,
              ),
            ),
          ),
          PopularGame(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: Dimensions.dim_25),
            width: Dimensions.dim_410,
            child: Text(
              LocalStrings.newestGame,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: Dimensions.dim_20,
              ),
            ),
          ),
          NewestGame(),
        ],
      ),
    );
  }
}
