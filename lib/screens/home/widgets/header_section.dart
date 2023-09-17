import 'package:flutter/material.dart';
import 'package:game_store_app/configs/constants/local_strings.dart';
import 'package:game_store_app/configs/constants/assets.dart';
import 'package:game_store_app/configs/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.paddingOf(context).top,
        left: Dimensions.dim_25,
        right: Dimensions.dim_25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocalStrings.welcome,
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: Dimensions.dim_5),
              Text(
                LocalStrings.liked,
                style: GoogleFonts.poppins(
                  fontSize: 19,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          CircleAvatar(
            child: Image.asset(
              Assets.avatar,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
