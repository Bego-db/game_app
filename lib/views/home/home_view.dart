import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:game_app/core/constant/string_constant.dart';
import 'package:game_app/core/extension/context_extension.dart';
import 'package:game_app/product/riverpod/riverpod.dart';
import 'package:game_app/product/widget/games_card_widget.dart';
import 'package:game_app/product/widget/search_bar_widget.dart';

final controller = ChangeNotifierProvider((ref) => GamesViewController());

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  void initState() {
    super.initState();
    ref.read(controller).getData();
  }

  @override
  Widget build(BuildContext context) {
    var watch = ref.watch(controller);
    var read = ref.read(controller);
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0, //Srool yapıldığında renk değişmemesi için
        title: Text(
          AppString.allGames,
          style: context.mytextTheme.titleLarge,
        ),
      ),
      body: Column(
        children: [
          Padding(
              padding: context.horizontal15,
              child: SearchBarTextfield(watch: watch)),
          Expanded(
            child: ListView.builder(
                physics: ClampingScrollPhysics(),
                itemCount: watch.allGameList.length,
                itemBuilder: (BuildContext context, int index) {
                  return GamesCardWidget(
                      games: watch.allGameList, index: index);
                }),
          ),
        ],
      ),
    );
  }
}
