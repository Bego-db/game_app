import 'package:flutter/material.dart';

extension ThemeExt on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get mytextTheme => theme.textTheme;
}

//contex ten padding e
extension PaddingExtension on BuildContext {
  //All padding_
  EdgeInsets get allLow => const EdgeInsets.all(4);
  EdgeInsets get allMedium => const EdgeInsets.all(8);
  EdgeInsets get allHigh => const EdgeInsets.all(16);

  //Only Padding
  EdgeInsets get onlyTop20 => const EdgeInsets.only(top: 20);
  EdgeInsets get onlyRight => const EdgeInsets.only(right: 10);
  EdgeInsets get onlyLeft => const EdgeInsets.only(left: 10);

  //Symmetric Padding
  EdgeInsets get horizontal25 => const EdgeInsets.symmetric(horizontal: 25);
  EdgeInsets get horizontal15 => const EdgeInsets.symmetric(horizontal: 15);
  EdgeInsets get hor15ver15 =>
      const EdgeInsets.symmetric(horizontal: 15, vertical: 15);

  // Static Kullanıma Örnek

  static EdgeInsets all = const EdgeInsets.all(4);
}

// int dan padding e
extension Paaadding on int {
  EdgeInsets get all => EdgeInsets.all(this.toDouble());
}
