import 'package:flutter/material.dart';
import 'package:game_app/core/constant/string_constant.dart';
import 'package:game_app/core/extension/context_extension.dart';
import 'package:game_app/product/riverpod/riverpod.dart';

class SearchBarTextfield extends StatelessWidget {
  const SearchBarTextfield({
    super.key,
    required this.watch,
  });

  final GamesViewController watch;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.hor15ver15,
      child: TextField(
        onChanged: (value) {
          if (value.isEmpty) {
            return watch.getData();
          } else {
            return watch.searhItems(value);
          }
        },
        controller: watch.searhBarContoller,
        decoration: InputDecoration(
          hintText: AppString.enterGameName,
          contentPadding: 0.zero,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(24))),
          prefixIcon: const Icon(Icons.search_rounded),
          // suffixIcon: IconButton(
          //     onPressed: () {
          //       return watch.searhItems();
          //     },
          //     icon: Icon(
          //       Icons.send_sharp,
          //       color: context.theme.primaryColor,
          //     ))
        ),
      ),
    );
  }
}
