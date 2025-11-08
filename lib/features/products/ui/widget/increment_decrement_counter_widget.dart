import 'package:e_commerce/app/app_colors.dart';
import 'package:flutter/material.dart';

class IncrementDecrementCounterWidget extends StatefulWidget {
  const IncrementDecrementCounterWidget({super.key, required this.onChange});

  final Function(int) onChange;

  @override
  State<IncrementDecrementCounterWidget> createState() =>
      _IncrementDecrementCounterWidgetState();
}

class _IncrementDecrementCounterWidgetState
    extends State<IncrementDecrementCounterWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 12,
      children: [
        GestureDetector(
          onTap: (){
            if(count <= 1) return;
            count--;
            widget.onChange(count);
            setState(() {});
          },
          child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: AppColors.themColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Icon(Icons.remove, color: Colors.white),
          ),
        ),

        Text(
          '$count',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: (){
            if(count >= 10) return;
            count++;
            widget.onChange(count);
            setState(() {});
          },
          child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: AppColors.themColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Icon(Icons.add, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
