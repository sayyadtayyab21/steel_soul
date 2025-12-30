import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:steel_soul/features/riveting/presentation%20/bloc/scanner_cubit.dart';


class ScannerButton extends StatelessWidget {
  const ScannerButton({super.key});

  Future<void> _onScanPressed(BuildContext context) async {
    final ImagePicker picker = ImagePicker();

    final XFile? image = await picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 85,
    );

    if (image != null && context.mounted) {
      debugPrint('Image selected: ${image.path}');
      // Access the Cubit from the context provided by MultiBlocProvider in the parent
      context.read<ScannerCubit>().extractWeight(File(image.path));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 42,
      child: FloatingActionButton.extended(
        onPressed: () => _onScanPressed(context),
        backgroundColor: const  Color(0xFF3181ff),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: Colors.white, width: 1),
        ),
        icon: const Icon(Icons.add, color: Colors.white),
        label: const Text(
          'Scan',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}