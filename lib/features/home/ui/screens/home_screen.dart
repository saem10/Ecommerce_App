import 'package:e_commerce/app/assets_path.dart';
import 'package:e_commerce/features/common/controllers/main_bottom_nav_bar_controller.dart';
import 'package:e_commerce/features/home/ui/widgets/app_bar_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../common/ui/widget/category_item.dart';
import '../widgets/home_carousel_slider.dart';
import '../../../common/ui/widget/product_card.dart';
import '../widgets/section_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildSearchTextField(),
              SizedBox(height: 16),
              const HomeCarouselSlider(),
              SizedBox(height: 16),
              SectionHeader(title: "Categories", onTapSeeAll: () {
                Get.find<MainBottomNavBarController>().moveToCategory();
              }),
              SizedBox(height: 16),
              _buildCategoriesSection(),
              SizedBox(height: 16),
              SectionHeader(title: "Popular", onTapSeeAll: () {}),
              SizedBox(height: 16),
              _buildProductSection(),
              SizedBox(height: 16),
              SectionHeader(title: "Special", onTapSeeAll: () {}),
              SizedBox(height: 16),
              _buildProductSection(),
              SizedBox(height: 16),
              SectionHeader(title: "New", onTapSeeAll: () {}),
              SizedBox(height: 16),
              _buildProductSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProductSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 8,
        children: [
        ProductCard(),
        ProductCard(),
        ProductCard(),
        ProductCard(),
        ProductCard(),
        ProductCard(),
        ProductCard(),
        ProductCard(),
        ProductCard(),
        ProductCard(),
        ],
      ),
    );
  }

  Widget _buildCategoriesSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 8,
        children: [
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
        ],
      ),
    );
  }

  Widget _buildSearchTextField() {
    return TextField(
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade200,
        filled: true,
        hintText: 'Search item',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(borderSide: BorderSide.none),
        enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: SvgPicture.asset(AssetsPath.logoNavSvg),
      actions: [
        AppBarActionButton(icon: Icons.person_outlined, onTap: () {}),
        SizedBox(width: 4),
        AppBarActionButton(icon: Icons.call, onTap: () {}),
        SizedBox(width: 4),
        AppBarActionButton(
          icon: Icons.notifications_active_outlined,
          onTap: () {},
        ),
        SizedBox(width: 4),
      ],
    );
  }
}
