import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class CustomBottomNavBarWidget extends StatelessWidget {
  const CustomBottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double bottomPadding = MediaQuery.of(context).padding.bottom;

    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 24, sigmaY: 24),
        child: Container(
          padding: EdgeInsets.only(
            left: 40,
            right: 40,
            top: 16,
            bottom: 16 + bottomPadding,
          ),
          decoration: BoxDecoration(
            color: AppColors.glassOverlay,
            border: const Border(
              top: BorderSide(color: AppColors.divider, width: 0.5),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _NavIcon(
                icon: Icons.home_rounded,
                isActive: true,
                onTap: () {},
              ),
              _NavIcon(
                icon: Icons.shopping_bag_outlined,
                isActive: false,
                onTap: () {},
              ),
              _NavIcon(
                icon: Icons.favorite_border_rounded,
                isActive: false,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Single nav icon 

class _NavIcon extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final VoidCallback onTap;

  const _NavIcon({
    required this.icon,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 26,
            color: isActive ? AppColors.primaryBrown : AppColors.textMuted,
          ),
          const SizedBox(height: 4),
          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            width: isActive ? 6 : 0,
            height: isActive ? 6 : 0,
            decoration: const BoxDecoration(
              color: AppColors.primaryBrown,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
