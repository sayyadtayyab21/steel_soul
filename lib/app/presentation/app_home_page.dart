import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steel_soul/app/presentation/app_update_blocprovider.dart';
import 'package:steel_soul/app/widgets/app_update_dailog.dart';
import 'package:steel_soul/core/di/injector.dart';
import 'package:steel_soul/features/auth/model/logged_in_user.dart';
import 'package:steel_soul/features/folding/presentation/ui/folding_screen.dart';
import 'package:steel_soul/features/laser_cutting/presentation/bloc/bloc_provider.dart';

import 'package:steel_soul/features/laser_cutting/presentation/ui/laser_cutting_screen.dart';
import 'package:steel_soul/features/packing/presentation/ui/packing_screen.dart';
import 'package:steel_soul/features/plastic_film/presentation/ui/plastic_film_screen.dart';

import 'package:steel_soul/features/powder_coating/presentation/ui/powder_coating_screen.dart';
import 'package:steel_soul/features/puf/presentation/ui/puf_screen.dart';
import 'package:steel_soul/features/riveting/presentation%20/ui/riveting_screen.dart';
import 'package:steel_soul/features/welding/presentation/ui/welding_screen.dart';

class AppHomePage extends StatelessWidget {
  const AppHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final userPermission = $sl.get<LoggedInUser>();
    print('User Permissions: $userPermission');
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: BlocListener<AppVersionCubit, AppVersionCubitState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              success: (data) {
                if (data) {
                  showDialog(
                    context: context,
                    builder:
                        (ctx) => const AppUpdateDialog(
                          appName: 'steel_soul',
                          packageName: 'in.easycloud.steel_soul',
                        ),
                    barrierDismissible: false,
                  );
                }
              },
            );
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header Section
                  _buildHeader(context),
                  const SizedBox(height: 30),

                  // Feature Cards Grid
                  _buildFeatureGrid(context, userPermission),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),

        // Greeting
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _getTimeBasedGreeting(),
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
          ],
        ),
        const SizedBox(height: 8),

        // Main Title
        const Text(
          'Let\'s make this day\nProductive',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2C3E50),
            height: 1.2,
          ),
        ),
      ],
    );
  }

  Widget _buildFeatureGrid(BuildContext context, LoggedInUser userPermission) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 1.0,
      children: [
        if (userPermission.role.contains('Laser Cutting User') ||
            userPermission.role.contains('Steel Soul Manager'))
          _buildFeatureCard(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => BlocProvider(
                        create:
                            (context) =>
                                LaserCuttingBlocProvider.get().fetchLaserList()
                                  ..request(),
                        child: const LaserCuttingScreen(),
                      ),
                ),
              );
            },
            context,
            title: 'Laser Cutting',
            color: const Color.fromARGB(255, 100, 203, 241), // Light Blue
            icon: Icons.inbox_outlined,
            imagePath: 'assets/images/laserCutting.png',
          ),
        if (userPermission.role.contains('Folding User') ||
            userPermission.role.contains('Steel Soul Manager'))
          _buildFeatureCard(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FoldingScreen()),
              );
            },

            context,
            title: 'Folding',
            color: const Color.fromARGB(255, 255, 154, 154), // ✅ Vibrant Orange
            icon: Icons.inventory_2_outlined,
            imagePath: 'assets/images/folding.png',
          ),
        if (userPermission.role.contains('Welding User') ||
            userPermission.role.contains('Steel Soul Manager'))
          _buildFeatureCard(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WeldingScreen()),
              );
            },

            context,
            title: 'Welding',
            color: const Color.fromARGB(
              255,
              255,
              160,
              105,
            ), // ✅ Deep Golden Amber
            icon: Icons.engineering_outlined,
            imagePath: 'assets/images/welding.png',
          ),
        if (userPermission.role.contains('Powder Coating User') ||
            userPermission.role.contains('Steel Soul Manager'))
          _buildFeatureCard(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PowderCoatingScreen(),
                ),
              );
            },

            context,
            title: 'Powder Coating',
            color: const Color.fromARGB(255, 234, 163, 101), // Orange
            icon: Icons.engineering_outlined,
            imagePath: 'assets/images/powdercoat.png',
          ),
        if (userPermission.role.contains('Plastic Film User'))
          _buildFeatureCard(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PlasticFilmScreen(),
                ),
              );
            },

            context,
            title: 'Plastic Film',
            color: const Color.fromARGB(255, 157, 152, 237), // Purple
            icon: Icons.category_outlined,
            imagePath: 'assets/images/plasticfilm.png',
          ),
        if (userPermission.role.contains('PUF User') ||
            userPermission.role.contains('Steel Soul Manager'))
          _buildFeatureCard(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PufScreen()),
              );
            },

            context,
            title: 'PUF',
            color: const Color(0xFF1AD0D0),
            icon: Icons.construction_outlined,
            imagePath: 'assets/images/puf.png',
          ),
        if (userPermission.role.contains('Riveting User') ||
            userPermission.role.contains('Steel Soul Manager'))
          _buildFeatureCard(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RivetingScreen()),
              );
            },

            context,
            title: 'Riveting',
            color: const Color(0xFF6EA7FF), // ✅ Teal Blue
            icon: Icons.construction_outlined,
            imagePath: 'assets/images/riveting.png',
          ),
        if (userPermission.role.contains('Packing User') ||
            userPermission.role.contains('Steel Soul Manager'))
          _buildFeatureCard(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PackingScreen()),
              );
            },

            context,
            title: 'Packing',
            color: const Color(0xFFF6997F), // ✅ Teal Blue
            icon: Icons.construction_outlined,
            imagePath: 'assets/images/packing.png',
          ),
      ],
    );
  }

  Widget _buildFeatureCard(
    BuildContext context, {
    required String title,
    required Color color,
    required IconData icon,
    required Function() onTap,
    String? imagePath,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [color, color.withOpacity(0.8)],
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: color.withOpacity(0.3),
                blurRadius: 15,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image and Arrow in one row
                Expanded(
                  child: Stack(
                    children: [
                      // Large Image/Icon
                      Center(
                        child:
                            imagePath != null
                                ? Image.asset(
                                  imagePath,
                                  width: 110,
                                  height: 110,

                                  fit: BoxFit.contain,
                                )
                                : Icon(icon, color: Colors.white, size: 150),
                      ),
                      // Arrow in top-right corner
                      Positioned(
                        top: 8,
                        right: 8,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                      ),
                      // Title overlay at bottom
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 0,
                            horizontal: 12,
                          ),

                          child: Text(
                            title,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Title
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _getTimeBasedGreeting() {
    final hour = DateTime.now().hour;
    String greeting;
    String emoji;

    if (hour >= 5 && hour < 12) {
      greeting = 'Good Morning';
      emoji = '🌅';
    } else if (hour >= 12 && hour < 17) {
      greeting = 'Good Afternoon';
      emoji = '☀️';
    } else if (hour >= 17 && hour < 21) {
      greeting = 'Good Evening';
      emoji = '🌆';
    } else {
      greeting = 'Good Night';
      emoji = '🌙';
    }

    // Get user name from login API
    String userName = 'User';

    final user = $sl.get<LoggedInUser>();
    // Use name if available, otherwise use firstName, otherwise use username
    userName = user.firstName;

    return '$greeting, $userName! $emoji';
  }
}
