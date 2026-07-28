import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          color: AppColors.searchBarFill,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: AppColors.divider, width: 0.8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            const Icon(Icons.search_rounded,
                color: AppColors.textMuted, size: 20),
            const SizedBox(width: 12),
            Text(
              'Search your favourite coffee...',
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textMuted,
              ),
            ),
            const Spacer(),
            Container(
              width: 1,
              height: 24,
              color: AppColors.divider,
            ),
            const SizedBox(width: 12),
            const Icon(Icons.tune_rounded,
                color: AppColors.primaryBrown, size: 20),
          ],
        ),
      ),
    );
  }
}
