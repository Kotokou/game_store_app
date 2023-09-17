import 'package:flutter/material.dart';
import 'package:game_store_app/configs/dimensions.dart';
import 'package:game_store_app/models/game_model.dart';
import 'package:game_store_app/screens/detail/widgets/detail_silver_delegate.dart';
import 'package:game_store_app/screens/detail/widgets/game_info.dart';

class DetailScreen extends StatelessWidget {
  final GameModel game;

  const DetailScreen({
    super.key,
    required this.game,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DetailSliverDelegate(
              game: game,
              expandedHeight: MediaQuery.sizeOf(context).height * 0.5,
              roundedContainerHeight: Dimensions.dim_30,
            ),
          ),
          SliverToBoxAdapter(
            child: GameInfo(game),
          ),
        ],
      ),
    );
  }
}
