import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/base_card.dart';
import '../widgets/filter_card.dart';
import '../widgets/grid_tile_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedFilter = 0;

  void selectFilter(int index) => setState(() => _selectedFilter = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Hello, Welcome 👋',
                      style: const TextStyle(
                        color: Color(0xFF787676),
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Albert Stevano',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                CircleAvatar(),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFDFDEDE),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFDFDEDE),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'Search clothes...',
                      hintStyle: const TextStyle(
                        color: Color(0xFFCAC9C9),
                      ),
                      prefixIcon: const Icon(Icons.search_outlined),
                      prefixIconColor: Color(0xFFCAC9C9),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                BaseCard(
                  color: Color(0xFF292526),
                  height: 48,
                  width: 48,
                  child: Icon(
                    Icons.filter_list_outlined,
                    color: const Color(0xFFFDFDFD),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => selectFilter(0),
                    child: FilterCard(
                      icon: Icons.all_inbox_outlined,
                      text: 'All items',
                      isActive: _selectedFilter == 0,
                    ),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: () => selectFilter(1),
                    child: FilterCard(
                      icon: Icons.all_inbox_outlined,
                      text: 'Dress',
                      isActive: _selectedFilter == 1,
                    ),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: () => selectFilter(2),
                    child: FilterCard(
                      icon: Icons.all_inbox_outlined,
                      text: 'T-Shirt',
                      isActive: _selectedFilter == 2,
                    ),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: () => selectFilter(3),
                    child: FilterCard(
                      icon: Icons.all_inbox_outlined,
                      text: 'Jeans',
                      isActive: _selectedFilter == 3,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1 / 2.3,
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 24,
              ),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: products.length,
              itemBuilder: (context, index) => GridTileItem(
                onTap: () => setState(
                    () => products[index].isLiked = !products[index].isLiked),
                product: products[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
