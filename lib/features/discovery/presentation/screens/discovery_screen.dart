import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../cubit/discovery_cubit.dart';
import '../widgets/coffee_header_widget.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/category_tabs_widget.dart';
import '../widgets/product_grid_widget.dart';
import '../widgets/custom_bottom_nav_bar_widget.dart';

class DiscoveryScreen extends StatelessWidget {
  const DiscoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DiscoveryCubit(),
      child: const _DiscoveryBody(),
    );
  }
}

class _DiscoveryBody extends StatelessWidget {
  const _DiscoveryBody();

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      extendBody: true,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: topPadding + 12, bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            const CoffeeHeaderWidget(),
            const SizedBox(height: 20),

            // Search Bar
            const SearchBarWidget(),
            const SizedBox(height: 24),

            // Section Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Categories', style: AppTextStyles.titleMedium),
                  Text('See All',
                      style: AppTextStyles.bodySmall.copyWith(
                        color: AppColors.primaryBrown,
                      )),
                ],
              ),
            ),
            const SizedBox(height: 14),

            // Category Tabs
            BlocBuilder<DiscoveryCubit, DiscoveryState>(
              buildWhen: (prev, curr) =>
                  prev.activeCategoryIndex != curr.activeCategoryIndex,
              builder: (context, state) {
                return CategoryTabsWidget(
                  categories: state.categories,
                  activeIndex: state.activeCategoryIndex,
                  onTabSelected: (index) =>
                      context.read<DiscoveryCubit>().selectCategory(index),
                );
              },
            ),
            const SizedBox(height: 24),

            // Product Grid
            BlocBuilder<DiscoveryCubit, DiscoveryState>(
              buildWhen: (prev, curr) => prev.products != curr.products,
              builder: (context, state) {
                return ProductGridWidget(products: state.products);
              },
            ),
          ],
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: const CustomBottomNavBarWidget(),
    );
  }
}
