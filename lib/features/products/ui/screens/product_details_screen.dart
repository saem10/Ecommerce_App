import 'package:e_commerce/features/products/ui/widget/color_picker.dart';
import 'package:e_commerce/features/products/ui/widget/increment_decrement_counter_widget.dart';
import 'package:e_commerce/features/products/ui/widget/product_image_carousel_slider.dart';
import 'package:e_commerce/features/products/ui/widget/size_picker.dart';
import 'package:flutter/material.dart';
import '../../../../app/app_colors.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  static const String name = '/product-details-screen';

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Details')),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProductImageCarouselSlider(),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Insta X5 new camera',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 20,
                                      ),
                                      Text('4.3', style: TextStyle(fontSize: 16)),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text("Reviews"),
                                      ),
                                      Card(
                                        color: AppColors.themColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: Icon(
                                            Icons.favorite_border,
                                            size: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            IncrementDecrementCounterWidget(
                              onChange: (int value) {
                                print(value);
                              },
                            ),
                          ],
                        ),
                        ColorPicker(
                          colors: const ['Red', 'White', 'Black', 'Pink'],
                          onChange: (selectedColor) {
                            print(selectedColor);
                          },
                        ),
                        SizedBox(height: 8),
                        SizePicker(
                          sizes: const ['S', 'M', 'L', 'XL'],
                          onChange: (selectedColor) {
                            print(selectedColor);
                          },
                        ),
                        SizedBox(height: 16,),
                        Text(
                          'Description',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '''Compatible with iOS mobile devices with A12 chips or above and iOS version 13.0 or above, including iPhone XS, iPhone XS Max, iPhone 11, iPhone 11 Pro, iPhone 11 Pro Max, iPhone 12, iPhone 12 Pro, iPhone 12 Pro Max, iPhone 12 mini, iPhone 13, iPhone 13 Pro, iPhone 13 Pro Max, iPhone 13 mini, iPhone 14, iPhone 14 Plus, iPhone 14 Pro, iPhone 14 Pro Max, iPhone 15, iPhone 15 Plus, iPhone15 Pro, iPhone 15 Pro Max, iPhone 16, iPhone 16 Plus, iPhone 16 Pro, iPhone 16 Pro Max, iPad Air (2020), iPad Pro and newer iPad models. ''',style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildPriceAndAddtoCardSection(),
          SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildPriceAndAddtoCardSection() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.themColor.withOpacity(0.2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text('Price'),
              Text(
                '\$1000',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.themColor,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 140,
            child: ElevatedButton(onPressed: () {}, child: Text('Add to Cart')),
          ),
        ],
      ),
    );
  }
}
