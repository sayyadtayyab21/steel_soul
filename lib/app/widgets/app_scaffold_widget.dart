import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:steel_soul/core/app_router/route_config.dart';

class AppScaffoldWidget extends StatelessWidget {
  const AppScaffoldWidget({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  void _goBranch(int index, BuildContext context) {
    if (index == 0) {
      // Always navigate to home page when home button is tapped
      // Use router.push for reliable navigation
      navigationShell.goBranch(0, initialLocation: true);
      AppRouterConfig.router.push('/home');
    } else {
      navigationShell.goBranch(
        index,
        initialLocation: index == navigationShell.currentIndex,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithNavigationBar(
      body: navigationShell,
      selectedIndex: navigationShell.currentIndex,
      onDestinationSelected: (index) => _goBranch(index, context),
    );
  }
}

class ScaffoldWithNavigationBar extends StatelessWidget {
  const ScaffoldWithNavigationBar({
    super.key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });
  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: body,
      resizeToAvoidBottomInset: false,
      // backgroundColor: Colors.white,
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),

              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(
                  index: 0,
                  label: 'Home',
                  isSelected: selectedIndex == 0,
                  child: _buildIconAsset(
                    'home.png',
                    isSelected: selectedIndex == 0,
                  ),
                ),
                _buildNavItem(
                  index: 1,
                  label: 'Profile',
                  isSelected: selectedIndex == 1,
                  child: _buildIconAsset(
                    'profile.png',
                    isSelected: selectedIndex == 1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required String label,
    required bool isSelected,
    required Widget child,
  }) {
    return GestureDetector(
      onTap: () => onDestinationSelected(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(padding: const EdgeInsets.all(0), child: child),
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              color: isSelected
                  ? const Color.fromARGB(255, 16, 17, 16)
                  : Colors.grey[600],
            ),
          ),
          if (isSelected)
            Container(
              margin: const EdgeInsets.only(top: 4),
              height: 3,
              width: 30,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 50, 191, 234),
                borderRadius: BorderRadius.circular(1.5),
              ),
            ),
        ],
      ),
    );
  }

  Widget buildHomeIcon({required bool isSelected}) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          // House base
          Container(
            width: 32,
            height: 24,
            margin: const EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
              color: const Color(0xFFD7CCC8), // Light beige
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Colors.grey[300]!, width: 0.5),
            ),
          ),
          // Roof
          Positioned(
            top: 6,
            left: 2,
            child: Container(
              width: 28,
              height: 12,
              decoration: const BoxDecoration(
                color: Color(0xFFE65100), // Red-orange roof
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
            ),
          ),
          // Chimney
          Positioned(
            top: 3,
            left: 20,
            child: Container(
              width: 4,
              height: 8,
              decoration: BoxDecoration(
                color: const Color(0xFFD32F2F),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          // Window
          Positioned(
            top: 12,
            left: 12,
            child: Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: const Color(0xFFECEFF1),
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Colors.grey[400]!),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileIcon({required bool isSelected}) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Body/shirt
          Container(
            width: 24,
            height: 16,
            margin: const EdgeInsets.only(top: 12, left: 4),
            decoration: BoxDecoration(
              color: const Color(0xFFE8F5E8), // Light colored shirt
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey[300]!, width: 0.5),
            ),
          ),
          // Jacket overlay
          Positioned(
            top: 10,
            left: 3,
            child: Container(
              width: 26,
              height: 18,
              decoration: BoxDecoration(
                color: Colors.grey[600], // Gray suit jacket
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey[400]!, width: 0.5),
              ),
            ),
          ),
          // Head
          Positioned(
            top: 2,
            left: 8,
            child: Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                color: const Color(0xFFE0E0E0), // Skin tone
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey[300]!, width: 0.5),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconAsset(String assetName, {required bool isSelected}) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Image.asset(
        'assets/images/$assetName',
        width: 32,
        height: 32,
        fit: BoxFit.contain,
      ),
    );
  }
}
