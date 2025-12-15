import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:steel_soul/core/core.dart';
import 'package:steel_soul/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:steel_soul/features/auth/presentation/bloc/sign_in/sign_in_cubit.dart';
import 'package:steel_soul/styles/urbanist_text_styles.dart';
import 'package:steel_soul/widgets/dialogs/app_dialogs.dart';

class AuthenticationScrn extends StatefulWidget {
  const AuthenticationScrn({super.key});

  @override
  State<AuthenticationScrn> createState() => _AuthenticationScrnState();
}

class _AuthenticationScrnState extends State<AuthenticationScrn> {
  late final TextEditingController username;
  late final TextEditingController pswd;
  bool showPswd = true;
  bool rememberMe = false;

  @override
  void initState() {
    super.initState();
    username = TextEditingController();
    pswd = TextEditingController();


    username.addListener(_onTextChanged);
    pswd.addListener(_onTextChanged);
  }

  void _onTextChanged() => setState(() {}); 
  @override
  void dispose() {
    username.dispose();
    pswd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),

                Text('Login', style: UrbanistTextStyles.heading1),
                const SizedBox(height: 8),

                Text(
                  'Access your account securely',
                  style: UrbanistTextStyles.bodyLarge.copyWith(
                    color: const Color(0xFF666666),
                  ),
                ),

                _buildMTARLogo(),
                const SizedBox(height: 20),

                _buildEmailField(),
                const SizedBox(height: 20),
                _buildPasswordField(),
                const SizedBox(height: 20),

                BlocConsumer<SignInCubit, SignInState>(
                  listener: (_, state) {
                    state.maybeWhen(
                      orElse: () {},
                      success: context.cubit<AuthCubit>().authCheckRequested,
                      failure: (failure) => AppDialog.showErrorDialog(
                        context,
                        title: failure.title,
                        content: failure.error,
                        onTapDismiss: context.close,
                      ),
                    );
                  },
                  builder: (_, state) {
                    return _buildLoginButton(state.isLoading);
                  },
                ),
                const SizedBox(height: 20),
                _buildEasyCloudBranding(),
              ],
            ),
          ),
        ),
      ),
    );
  }


  void togglePswd() => setState(() {
        showPswd = !showPswd;
      });

  Widget _buildMTARLogo() {
    return Column(
      children: [

        SizedBox(
          height: 160,
          child: Image.asset(
            'assets/images/app_logo.png',
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }

  Widget _buildEmailField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: UrbanistTextStyles.bodyMedium.copyWith(
            color: const Color(0xFF333333),
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFFE0E0E0)),
            color: Colors.white,
          ),
          child: TextField(
            controller: username,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Enter your email',
              hintStyle: UrbanistTextStyles.bodyLarge.copyWith(
                color: const Color(0xFF999999),
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  'assets/icons/email.png',
                  width: 20,
                  height: 20,
                  // color: const Color(0xFF999999),
                ),
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password',
          style: context.textTheme.bodyMedium?.copyWith(
            color: const Color(0xFF333333),
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFFE0E0E0)),
            color: Colors.white,
          ),
          child: TextField(
            controller: pswd,
            obscureText: showPswd,
            decoration: InputDecoration(
              hintText: 'Enter your password',
              hintStyle: UrbanistTextStyles.bodyLarge.copyWith(
                color: const Color(0xFF999999),
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  'assets/icons/lock.png',
                  width: 20,
                  height: 20,
                  color: const Color(0xFFFF8C00), // Light orange color
                ),
              ),
              suffixIcon: GestureDetector(
                onTap: togglePswd,
                child: Icon(
                  showPswd ? Icons.visibility_off : Icons.visibility,
                  color: const Color(0xFF999999),
                  size: 20,
                ),
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }



  

  Widget _buildLoginButton(bool isLoading) {
    // ✅ Check if both fields have text
    final isEnabled =
        username.text.trim().isNotEmpty && pswd.text.trim().isNotEmpty;

    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: isLoading || !isEnabled
            ? null
            : () {
                context.cubit<SignInCubit>().login(username.text, pswd.text);
              },
        style: ElevatedButton.styleFrom(
          backgroundColor:
              isEnabled ? const Color(0xFF1744AB) : Colors.grey[600],
          foregroundColor: Colors.grey[600],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
        child: isLoading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Text(
                'Login',
                style: UrbanistTextStyles.buttonLocal,
              ),
      ),
    );
  }

  Widget _buildEasyCloudBranding() {
    return Column(
      children: [
        Image.asset(
          'assets/logo/easycloud.png',
          width: 100,
          height: 100,
        ),
        Text(
          'Powered by EasyCloud',
          style: UrbanistTextStyles.caption,
        ),
      ],
    );
  }
}
