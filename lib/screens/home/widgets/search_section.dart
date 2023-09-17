import 'package:flutter/material.dart';
import 'package:game_store_app/configs/app_theme.dart';
import 'package:game_store_app/configs/constants/local_strings.dart';
import 'package:game_store_app/configs/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimensions.dim_25,
        vertical: Dimensions.dim_30,
      ),
      child: Stack(
        children: [
          TextField(
            cursorColor: AppTheme.primary,
            decoration: InputDecoration(
              fillColor: AppTheme.secondary,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.dim_20),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: Dimensions.dim_20,
                vertical: Dimensions.dim_20,
              ),
              prefixIcon: const Icon(
                Icons.search_outlined,
                size: Dimensions.dim_30,
              ),
              hintText: LocalStrings.search,
              hintStyle: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.grey.withOpacity(0.7),
              ),
            ),
          ),
          Positioned(
            bottom: Dimensions.dim_10,
            top: Dimensions.dim_10,
            right: 12,
            child: Container(
              padding: const EdgeInsets.all(Dimensions.dim_5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Dimensions.dim_10,
                ),
                color: AppTheme.primary,
              ),
              child: const Icon(
                Icons.mic_outlined,
                color: Colors.white,
                size: Dimensions.dim_25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
