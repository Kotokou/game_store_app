import 'package:flutter/material.dart';
import 'package:game_store_app/configs/app_theme.dart';
import 'package:game_store_app/configs/constants/local_strings.dart';
import 'package:game_store_app/configs/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.secondary,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppTheme.grey.withOpacity(0.2),
              blurRadius: Dimensions.dim_10,
              spreadRadius: Dimensions.dim_5,
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(Dimensions.dim_30),
            topRight: Radius.circular(Dimensions.dim_30),
          ),
          child: BottomNavigationBar(
            elevation: 0,
            selectedItemColor: AppTheme.primary,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            unselectedItemColor: AppTheme.grey.withOpacity(0.7),
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: GoogleFonts.poppins(),
            unselectedLabelStyle: GoogleFonts.poppins(),
            items: [
              const BottomNavigationBarItem(
                label: LocalStrings.home,
                icon: Icon(
                  Icons.home_rounded,
                  size: Dimensions.dim_50,
                ),
              ),
              BottomNavigationBarItem(
                label: LocalStrings.app,
                icon: Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.more_horiz_outlined,
                    size: Dimensions.dim_30,
                    color: Colors.grey,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: LocalStrings.movie,
                icon: Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.play_arrow_rounded,
                    size: Dimensions.dim_30,
                    color: Colors.grey,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: LocalStrings.book,
                icon: Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.auto_stories_rounded,
                    size: Dimensions.dim_30,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
