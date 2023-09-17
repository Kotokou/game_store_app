import 'package:flutter/material.dart';
import 'package:game_store_app/configs/app_theme.dart';
import 'package:game_store_app/configs/constants/local_strings.dart';
import 'package:game_store_app/configs/dimensions.dart';
import 'package:game_store_app/models/game_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class DescriptionSection extends StatelessWidget {
  final GameModel game;
  const DescriptionSection(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.dim_25),
      child: ReadMoreText(
        game.description,
        trimLines: 2,
        colorClickableText: AppTheme.primary,
        trimMode: TrimMode.Line,
        trimCollapsedText: LocalStrings.more,
        trimExpandedText: LocalStrings.less,
        style: GoogleFonts.poppins(
          color: Colors.grey.withOpacity(0.7),
          height: 1.5,
        ),
      ),
    );
  }
}
