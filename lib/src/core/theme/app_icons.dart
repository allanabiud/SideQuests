import 'package:flutter/material.dart';

class AppIcons {
  static const List<IconData> questIcons = [
    Icons.directions_run_rounded,
    Icons.directions_bike_rounded,
    Icons.fitness_center_rounded,
    Icons.restaurant_rounded,
    Icons.shopping_cart_rounded,
    Icons.palette_rounded,
    Icons.music_note_rounded,
    Icons.movie_rounded,
    Icons.videogame_asset_rounded,
    Icons.book_rounded,
    Icons.school_rounded,
    Icons.work_rounded,
    Icons.home_rounded,
    Icons.pets_rounded,
    Icons.favorite_rounded,
    Icons.star_rounded,
    Icons.explore_rounded,
    Icons.rocket_launch_rounded,
    Icons.local_fire_department_rounded,
    Icons.celebration_rounded,
  ];

  static IconData getQuestIcon(int? codePoint) {
    if (codePoint == null) return Icons.explore_rounded;
    try {
      return questIcons.firstWhere(
        (icon) => icon.codePoint == codePoint,
      );
    } catch (_) {
      return Icons.explore_rounded;
    }
  }
}
