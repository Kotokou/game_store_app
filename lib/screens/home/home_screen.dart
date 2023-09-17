import 'package:flutter/material.dart';
import 'package:game_store_app/configs/app_theme.dart';
import 'package:game_store_app/configs/constants/assets.dart';
import 'package:game_store_app/configs/dimensions.dart';
import 'package:game_store_app/screens/home/widgets/category_section.dart';
import 'package:game_store_app/screens/home/widgets/header_section.dart';
import 'package:game_store_app/screens/home/widgets/nav_bar.dart';
import 'package:game_store_app/screens/home/widgets/search_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primary,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              color: AppTheme.primary,
            ),
            Transform(
              transform: Matrix4.identity()
                ..rotateZ(
                  Dimensions.dim_20,
                ),
              origin: const Offset(
                Dimensions.dim_150,
                Dimensions.dim_50,
              ),
              child: Image.asset(
                Assets.bgLiquid,
                width: Dimensions.dim_200,
              ),
            ),
            Positioned(
              right: 0,
              top: Dimensions.dim_200,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(Dimensions.dim_20),
                origin: const Offset(
                  Dimensions.dim_180,
                  Dimensions.dim_100,
                ),
                child: Image.asset(
                  Assets.bgLiquid,
                  width: Dimensions.dim_200,
                ),
              ),
            ),
            Column(
              children: [
                const HeaderSection(),
                const SearchSection(),
                CategorySection(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
