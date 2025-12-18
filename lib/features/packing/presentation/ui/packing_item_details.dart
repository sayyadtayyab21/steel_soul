import 'package:flutter/material.dart';

import 'package:steel_soul/features/packing/presentation/ui/packing_scan_details.dart';
import 'package:steel_soul/features/packing/presentation/widgets/packing_item_cards.dart';


 
import 'package:steel_soul/styles/urbanist_text_styles.dart';


// --- Dummy Data Structure for Projects ---
class Packing {
  final String id;
 

  Packing(this.id,);
}

// Dummy Project List
final List<Packing> dummyProjects = [
  Packing('001 TV1'),
   Packing('001 TV1'),
   Packing('001 TV1'),
 Packing('001 TV1'),
 Packing('001 TV1'),
];


class PackingItemDetails extends StatefulWidget {
  const PackingItemDetails({super.key});

  @override
  State<PackingItemDetails> createState() => _PackingItemDetailsState();
}

class _PackingItemDetailsState extends State<PackingItemDetails> {
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
            color: const  Color(0xFFd87b60),
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        title: Text(
          'Packing',
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
                          child: Icon(Icons.search,color:  Color(0xFFd87b60),) // Used primary color
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
                    child: PackingItemCards(
                      id: project.id,
                      // date: project.date,
                      onTap: () {
                        // Navigate to the details page when a card is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PackingScanDetails(projectId:project.id)
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
             
          },
          backgroundColor: const  Color(0xFFd87b60),
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