
import 'package:steel_soul/core/ext/context_ext.dart';
import 'package:steel_soul/features/auth/presentation/bloc/auth/auth_cubit.dart';


import 'package:flutter/material.dart';



import 'package:package_info_plus/package_info_plus.dart';

class AppProfilePage extends StatelessWidget {
  const AppProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // leading: Container(
        //   margin: const EdgeInsets.all(8),
        //   decoration: BoxDecoration(
        //     color: const Color(0xFF3498DB),
        //     borderRadius: BorderRadius.circular(25),
        //   ),
        //   child: IconButton(
        //     icon: const Icon(Icons.arrow_back, color: Colors.white),
        //     onPressed: () => Navigator.pop(context),
        //   ),
        // ),
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // const SizedBox(height: 20),
          
          // steel_soul Logo Section
          Column(
            children: [
              Image.asset(
                'assets/images/app_logo2.png',
                height: 180,
                width: 200,
              ),
              const SizedBox(height: 8),
              // const Text(
              //   'Building Nation with Exceptional Engineering',
              //   style: TextStyle(
              //     fontSize: 14,
              //     color: Colors.black,
              //     fontWeight: FontWeight.normal,
              //   ),
              //   textAlign: TextAlign.center,
              // ),
            ],
          ),
          
          // const SizedBox(height: 40),
          
          // Profile Card
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                _ProfileItem(
                  const SizedBox(), // Empty first item for consistent spacing
                  'Name',
                  context.user.firstName,
                ),
                const Divider(height: 1, color: Color(0xFFE0E0E0)),
                const _ProfileItem(
                  SizedBox(),
                  'Organization',
                  'steel_soul',
                ),
                const Divider(height: 1, color: Color(0xFFE0E0E0)),
                FutureBuilder(
                  future: _appversion(),
                  builder: (_, snapshot) {
                    final version = snapshot.data ?? '0.0.1';
                    return _ProfileItem(
                      const SizedBox(),
                      'App Version',
                      version.split(' ')[0], // Just show version number
                    );
                  },
                ),
                const SizedBox(height: 20),
                // Logout Button
                Container(
                  margin: const EdgeInsets.all(16),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => context.cubit<AuthCubit>().signOut(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1744AB),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: const Text(
                      'Logout',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 60),
          
          // EasyCloud Branding
          Column(
            children: [
              Image.asset(
                'assets/logo/easycloud.png',
                height: 40,
                width: 120,
              ),
              const SizedBox(height: 8),
              const Text(
                'Powered by EasyCloud',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
    
  }

  Future<String> _appversion() async {
    final pinfo = await PackageInfo.fromPlatform();
    final version = pinfo.version;
    final buildNumber = pinfo.buildNumber;
    return '$version ($buildNumber)';
  }
}

class _ProfileItem extends StatelessWidget {
  const _ProfileItem(this.icon, this.title, this.value);

  final Widget icon;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF1744AB),
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
