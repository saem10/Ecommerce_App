import 'package:e_commerce/app/assets_path.dart';
import 'package:e_commerce/features/home/ui/widgets/app_bar_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildSearchTextField(),
          ],
        ),
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
              border: OutlineInputBorder(
                borderSide: BorderSide.none
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none
              ),

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
        AppBarActionButton(icon: Icons.notifications_active_outlined, onTap: () {}),
        SizedBox(width: 4),
      ],
    );
  }
}