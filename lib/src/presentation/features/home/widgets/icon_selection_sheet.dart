import 'package:flutter/material.dart';
import '../../../../core/theme/app_icons.dart';
import '../../../common/widgets/app_bottom_sheet.dart';

class IconSelectionSheet extends StatelessWidget {
  const IconSelectionSheet({super.key});

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
        itemCount: AppIcons.questIcons.length,
        itemBuilder: (context, index) {
          final icon = AppIcons.questIcons[index];
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
