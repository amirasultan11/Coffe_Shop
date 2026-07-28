import 'package:flutter/material.dart';
import '../../data/models/coffee_product.dart';
import 'product_card_widget.dart';

class ProductGridWidget extends StatelessWidget {
  final List<CoffeeProduct> products;

  const ProductGridWidget({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Adaptive metrics
        final double maxWidth = constraints.maxWidth;
        final double hPadding = maxWidth > 400 ? 20.0 : 16.0;
        final double crossSpacing = maxWidth > 400 ? 16.0 : 12.0;
        final double mainSpacing = maxWidth > 400 ? 16.0 : 12.0;
        // Slightly taller cards on narrow screens
        final double childAspectRatio = maxWidth > 400 ? 0.62 : 0.58;

        return GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: hPadding),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: crossSpacing,
            mainAxisSpacing: mainSpacing,
            childAspectRatio: childAspectRatio,
          ),
          itemBuilder: (context, index) =>
              ProductCardWidget(product: products[index]),
        );
      },
    );
  }
}
