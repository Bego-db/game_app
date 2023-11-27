import 'package:flutter/material.dart';
import 'package:game_app/core/extension/context_extension.dart';

class RedDivder extends StatelessWidget {
  const RedDivder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontal25,
      child: Divider(color: context.theme.colorScheme.error),
    );
  }
}
