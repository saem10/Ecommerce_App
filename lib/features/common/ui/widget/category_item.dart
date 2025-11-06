import 'package:flutter/material.dart';
import '../../../../app/app_colors.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: AppColors.themColor.withOpacity(0.20),
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: const Icon(
              Icons.computer, size: 48, color: AppColors.themColor,),
          ),
        ),
        const Text('Computer',
          style: TextStyle(
              color: AppColors.themColor,
              fontWeight: FontWeight.w500,
              fontSize: 16),
        )
      ],
    );
  }
}