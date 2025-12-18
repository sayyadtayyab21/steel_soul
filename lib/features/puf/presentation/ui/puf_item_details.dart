import 'package:flutter/material.dart';
import 'package:steel_soul/features/plastic_film/presentation/ui/plastic_film_scan_details.dart';

import 'package:steel_soul/features/powder_coating/presentation/widgets/powder_coating_item_cards.dart';
import 'package:steel_soul/features/puf/presentation/ui/puf_scan_details.dart';
import 'package:steel_soul/features/puf/presentation/widgets/puf_item_cards.dart';
 
import 'package:steel_soul/styles/urbanist_text_styles.dart';


// --- Dummy Data Structure for Projects ---
class Puf {
  final String id;
 

  Puf(this.id,);
}

// Dummy Project List
final List<Puf> dummyProjects = [
  Puf('001 TV1'),
   Puf('001 TV1'),
   Puf('001 TV1'),
 Puf('001 TV1'),
 Puf('001 TV1'),
];


class PufItemDetails extends StatefulWidget {
  const PufItemDetails({super.key});

  @override
  State<PufItemDetails> createState() => _PufItemDetailsState();
}

class _PufItemDetailsState extends State<PufItemDetails> {
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
            color: Color(0xFF1ad0d0),
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        title: Text(
          'PUF',
          style: UrbanistTextStyles.heading3,
        ),
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
                          child: Icon(Icons.search,color: Color(0xFF1ad0d0),) // Used primary color
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
                    child: PufItemCards(
                      id: project.id,
                      // date: project.date,
                      onTap: () {
                        // Navigate to the details page when a card is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PufScanDetails(projectId: project.id),
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
          onPressed: () {
            // Action for the Floating Action Button (Scan)
          },
          backgroundColor: const Color(0xFF1ad0d0),
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
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}