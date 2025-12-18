import 'package:flutter/material.dart';

import 'package:steel_soul/features/folding/presentation/ui/folding_item_details.dart';

import 'package:steel_soul/features/folding/presentation/widgets/folding_card.dart';

import 'package:steel_soul/styles/urbanist_text_styles.dart';

// --- Dummy Data Structure for Projects ---
class Folding {
  final String id;
  final String date;

  Folding(this.id, this.date);
}

// Dummy Project List
final List<Folding> dummyProjects = [
  Folding('PJT-00001', '25-01-2025'),
  Folding('PJT-00332', '22-01-2025'),
  Folding('PJT-00004', '20-01-2025'),
  Folding('PJT-00006', '21-01-2025'),
  Folding('PJT-00008', '19-01-2025'),
];

class FoldingScreen extends StatefulWidget {
  const FoldingScreen({super.key});

  @override
  State<FoldingScreen> createState() => _FoldingScreenState();
}

class _FoldingScreenState extends State<FoldingScreen> {
  // final BinApiService _binApiService = $sl<BinApiService>();
  // List<BinResponse> binData = <BinResponse>[];
  bool isLoading = false;
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color(0xFFff7f7e),
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        title: Text('Floding', style: UrbanistTextStyles.heading3),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Project ID', // Adjusted hint for relevance
                  hintStyle: TextStyle(color: Colors.grey[600]),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Icon(
                      Icons.search,
                      color: Color(0xFFFF7f7e),
                    ), // Used primary color
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Project List (Using dummy data)
            Expanded(
              child: ListView.builder(
                itemCount: dummyProjects.length,
                itemBuilder: (context, index) {
                  final project = dummyProjects[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: FoldingCard(
                      id: project.id,
                      date: project.date,
                      onTap: () {
                        // Navigate to the details page when a card is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FoldingItemDetails(),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 108,
        height: 42,
        child: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: const Color(0xFFff7f7e),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // radius = 20px
            side: const BorderSide(
              color: Colors.white, // white border
              width: 1, // 1px border width
            ),
          ),
          icon: const Icon(Icons.add, color: Colors.white),
          label: const Text(
            'Scan',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
