import 'package:flutter/material.dart';

import '../model/product.dart';

class GridTileItem extends StatelessWidget {
  const GridTileItem({
    super.key,
    this.onTap,
    required this.product,
  });

  final void Function()? onTap;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.red,
                ),
                height: 200,
              ),
              const SizedBox(height: 8),
              Text(
                product.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                product.category,
                style: const TextStyle(
                  color: Color(0xFF787676),
                  fontSize: 10,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      product.price,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        const Icon(
                          Icons.star,
                          color: Color(0xFFFFD33C),
                        ),
                        Text(
                          product.rating,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 12,
            right: 12,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF292526),
              ),
              padding: const EdgeInsets.all(4),
              child: Icon(
                product.isLiked
                    ? Icons.favorite_outlined
                    : Icons.favorite_border_outlined,
                color: Color(0xFFFDFDFD),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
