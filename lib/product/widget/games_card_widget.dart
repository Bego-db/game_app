import 'package:flutter/material.dart';
import 'package:game_app/core/extension/context_extension.dart';
import 'package:game_app/product/model/games_model.dart';
import 'package:game_app/product/widget/yellow_divider.dart';

class GamesCardWidget extends StatelessWidget {
  final List<GamesModel?> games;
  final int index;
  const GamesCardWidget({
    super.key,
    required this.games,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontal15,
      child: Card(
        color: index.isEven ? context.theme.primaryColorLight : Colors.red[200],
        child: Padding(
          padding: context.hor15ver15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: SizedBox(
                        height: 150,
                        width: double.infinity,
                        child: Image.network(
                          "${games[index]!.thumbnail}",
                          fit: BoxFit.fill,
                        )),
                  ),
                  IconButton(
                      highlightColor: Colors.blue[200],
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_sharp,
                        color: Colors.red,
                        size: 20,
                      ))
                ],
              ),
              const RedDivder(),
              Text(
                "Game Name: ${games[index]!.title}",
                style: context.mytextTheme.labelLarge,
              ),
              Text(
                "Genre: ${games[index]!.genre}",
                style: context.mytextTheme.labelLarge,
              ),
              Text(
                "Platform: ${games[index]!.platform}",
                style: context.mytextTheme.labelLarge,
              ),
              Text(
                "Release Dat: ${games[index]!.releaseDate}",
                style: context.mytextTheme.labelLarge,
              ),
              Text(
                "Developer:${games[index]!.developer}",
                style: context.mytextTheme.labelLarge,
              ),
              Text(
                "Short Description: ${games[index]!.shortDescription}",
                style: context.mytextTheme.labelLarge,
              ),
              const RedDivder(),
            ],
          ),
        ),
      ),
    );
  }
}
