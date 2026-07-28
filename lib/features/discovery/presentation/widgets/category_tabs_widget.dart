import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class CategoryTabsWidget extends StatelessWidget {
  final List<String> categories;
  final int activeIndex;
  final ValueChanged<int> onTabSelected;

  const CategoryTabsWidget({
    super.key,
    required this.categories,
    required this.activeIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          final bool isActive = index == activeIndex;
          return GestureDetector(
            onTap: () => onTabSelected(index),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeInOut,
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
              decoration: BoxDecoration(
                color: isActive ? AppColors.primaryBrown : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: isActive
                      ? AppColors.primaryBrown
                      : AppColors.divider,
                  width: 1.2,
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                categories[index],
                style: AppTextStyles.labelCategory.copyWith(
                  color: isActive
                      ? AppColors.textOnBrown
                      : AppColors.textSecondary,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
