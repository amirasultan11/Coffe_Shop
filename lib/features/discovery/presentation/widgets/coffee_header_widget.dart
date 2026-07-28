import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class CoffeeHeaderWidget extends StatelessWidget {
  const CoffeeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        children: [
          // Menu icon
          _CircleIconButton(icon: Icons.menu_rounded, onPressed: () {}),
          const SizedBox(width: 16),

          // Greeting
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello Amera Sultan ', style: AppTextStyles.titleMedium),
                const SizedBox(height: 2),
                Text(
                  'Find your favourite coffee',
                  style: AppTextStyles.labelGreeting,
                ),
              ],
            ),
          ),

          // Search icon
          _CircleIconButton(icon: Icons.search_rounded, onPressed: () {}),
          const SizedBox(width: 12),

          // Profile avatar
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.primaryBrown, width: 2),
              image: const DecorationImage(
                image: AssetImage('assets/images/myprofile.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Private helper

class _CircleIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _CircleIconButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.surfaceDark,
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(icon, size: 20, color: AppColors.iconDefault),
        ),
      ),
    );
  }
}
