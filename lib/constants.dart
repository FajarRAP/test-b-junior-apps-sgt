import 'model/product.dart';

const avatarPath = 'assets/avatar.png';
const product1Path = 'assets/product-1.jpg';
const product2Path = 'assets/product-2.jpg';
const product3Path = 'assets/product-3.jpg';
const product4Path = 'assets/product-4.jpg';

final products = <Product>[
  Product(
    category: 'T-Shirt',
    name: 'Modern Light Clothes',
    price: '\$212.99',
    rating: '5.0',
    url: product1Path,
  ),
  Product(
    category: 'Dress',
    name: 'Light Dress Bless',
    price: '\$162.99',
    rating: '5.0',
    url: product2Path,
  ),
  Product(
    category: 'Dress',
    name: 'Maroon Dark Top',
    price: '\$194.99',
    rating: '5.0',
    url: product3Path,
  ),
  Product(
    category: 'Dress',
    name: 'Light Dress yellow',
    price: '\$122.99',
    rating: '5.0',
    url: product4Path,
  ),
];
