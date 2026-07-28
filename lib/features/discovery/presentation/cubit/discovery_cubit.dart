import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/coffee_product.dart';

// State
class DiscoveryState {
  final int activeCategoryIndex;
  final List<String> categories;
  final List<CoffeeProduct> products;

  const DiscoveryState({
    required this.activeCategoryIndex,
    required this.categories,
    required this.products,
  });

  DiscoveryState copyWith({
    int? activeCategoryIndex,
    List<String>? categories,
    List<CoffeeProduct>? products,
  }) {
    return DiscoveryState(
      activeCategoryIndex: activeCategoryIndex ?? this.activeCategoryIndex,
      categories: categories ?? this.categories,
      products: products ?? this.products,
    );
  }
}

// Cubit
class DiscoveryCubit extends Cubit<DiscoveryState> {
  DiscoveryCubit()
      : super(
          DiscoveryState(
            activeCategoryIndex: 0,
            categories: const [
              'Espresso',
              'Drip Coffee',
              'Cold Brew',
              'Latte',
              'Mocha',
            ],
            products: _mockProducts,
          ),
        );

  void selectCategory(int index) {
    emit(state.copyWith(activeCategoryIndex: index));
  }

  static const _mockProducts = <CoffeeProduct>[
    CoffeeProduct(
      id: '1',
      name: 'Dark Roast Latte',
      subtitle: 'with Oat Milk',
      price: 4.20,
      rating: 4.8,
      imageUrl:
          'https://images.unsplash.com/photo-1541167760496-9af0ab49e5f0?w=400&q=80',
    ),
    CoffeeProduct(
      id: '2',
      name: 'Iced Mocha',
      subtitle: 'with Chocolate',
      price: 5.25,
      rating: 4.6,
      imageUrl:
          'https://images.unsplash.com/photo-1572442388796-11668a67e53d?w=400&q=80',
    ),
    CoffeeProduct(
      id: '3',
      name: 'Double Espresso',
      subtitle: 'Classic Bold',
      price: 3.50,
      rating: 4.9,
      imageUrl:
          'https://images.unsplash.com/photo-1510707577719-ae7c14805e3a?w=400&q=80',
    ),
    CoffeeProduct(
      id: '4',
      name: 'Nitro Cold Brew',
      subtitle: 'Smooth & Creamy',
      price: 4.95,
      rating: 4.7,
      imageUrl:
          'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=400&q=80',
    ),
    CoffeeProduct(
      id: '5',
      name: 'Caramel Macchiato',
      subtitle: 'with Vanilla',
      price: 5.50,
      rating: 4.5,
      imageUrl:
          'https://images.unsplash.com/photo-1485808191679-5f86510681a2?w=400&q=80',
    ),
    CoffeeProduct(
      id: '6',
      name: 'Flat White',
      subtitle: 'Extra Smooth',
      price: 4.00,
      rating: 4.8,
      imageUrl:
          'https://images.unsplash.com/photo-1534778101976-62847782c213?w=400&q=80',
    ),
  ];
}
