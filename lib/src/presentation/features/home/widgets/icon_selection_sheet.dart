import 'package:flutter/material.dart';
import '../../../common/widgets/app_bottom_sheet.dart';

class IconSelectionSheet extends StatelessWidget {
  const IconSelectionSheet({super.key});

  static const List<IconData> _icons = [
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

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      title: 'Choose Icon',
      icon: Icons.category_rounded,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        itemCount: _icons.length,
        itemBuilder: (context, index) {
          final icon = _icons[index];
          return InkWell(
            onTap: () => Navigator.pop(context, icon.codePoint),
            borderRadius: BorderRadius.circular(12),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.outlineVariant,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, size: 28),
            ),
          );
        },
      ),
    );
  }
}
