// import 'package:flutter/material.dart';
// import 'package:steel_soul/features/laser_cutting/presentation/ui/laser_scan_details.dart';




// import 'package:steel_soul/features/laser_cutting/presentation/widgets/item_cards.dart';
// import 'package:steel_soul/features/plastic_film/presentation/ui/plastic_film_scan_details.dart';

 
// import 'package:steel_soul/styles/urbanist_text_styles.dart';


// // --- Dummy Data Structure for Projects ---
// class Laser{
//   final String id;
 

//   Laser(this.id,);
// }

// // Dummy Project List
// final List<Laser> dummyProjects = [
//   Laser('001 TV1'),
//    Laser('001 TV1'),
//    Laser('001 TV1'),
//  Laser('001 TV1'),
//  Laser('001 TV1'),
// ];


// class PufItemDetails extends StatefulWidget {
//   const PufItemDetails({super.key});

//   @override
//   State<PufItemDetails> createState() => _PufItemDetailsState();
// }

// class _PufItemDetailsState extends State<PufItemDetails> {
//   // final BinApiService _binApiService = $sl<BinApiService>();
//   // List<BinResponse> binData = <BinResponse>[];
//   bool isLoading = false;
//   String? errorMessage;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: Container(
//           margin: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//             color: const Color(0xFF5FD6FF),
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child: IconButton(
//             icon: const Icon(Icons.arrow_back, color: Colors.white),
//             onPressed: () => Navigator.pop(context),
//           ),
//         ),
//         title: Text(
//           'Laser Cutting',
//           style: UrbanistTextStyles.heading3,
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Search Bar
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.grey[100],
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Search Project ID', // Adjusted hint for relevance
//                   hintStyle: TextStyle(color: Colors.grey[600]),
//                  prefixIcon: Padding(
//                           padding: const EdgeInsets.only(left: 4),
//                           child: Icon(Icons.search,color: Color(0xFF5FD6FF),) // Used primary color
//                         ),
//                   border: InputBorder.none,
//                   contentPadding: const EdgeInsets.symmetric(
//                     horizontal: 16,
//                     vertical: 12,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),

//             // Project List (Using dummy data)
//             Expanded(
//               child: ListView.builder(
//                 itemCount: dummyProjects.length,
//                 itemBuilder: (context, index) {
//                   final project = dummyProjects[index];
//                   return Padding(
//                     padding: const EdgeInsets.only(bottom: 12.0),
//                     child: ItemCards(
//                       id: project.id,
//                       // date: project.date,
//                       onTap: () {
//                         // Navigate to the details page when a card is tapped
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => LaserScanDetails(projectId: project.id),
//                           ),
//                         );
//                       },
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: SizedBox(
//         width: 108,
//         height: 42,
//         child: FloatingActionButton.extended(
//           onPressed: () {
//             // Action for the Floating Action Button (Scan)
//           },
//           backgroundColor: const Color(0xFF62CEFF),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20), // radius = 20px
//             side: const BorderSide(
//               color: Colors.white, // white border
//               width: 1, // 1px border width
//             ),
//           ),
//           icon: const Icon(Icons.add, color: Colors.white),
//           label: const Text(
//             'Scan',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 20,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steel_soul/features/puf/model/riveting_item_model.dart';
import 'package:steel_soul/features/puf/presentation/bloc/bloc_provider.dart';
import 'package:steel_soul/features/puf/presentation/ui/puf_scan_details.dart';
import 'package:steel_soul/features/puf/presentation/widgets/puf_item_cards.dart';
import 'package:steel_soul/features/puf/presentation/widgets/scanner_button.dart';



import 'package:steel_soul/styles/urbanist_text_styles.dart';

class PufItemDetails extends StatefulWidget {
  final String id;
  const PufItemDetails({super.key, required this.id});

  @override
  State<PufItemDetails> createState() => _PufItemDetailsState();
}

class _PufItemDetailsState extends State<PufItemDetails> {
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (_) =>
    PufBlocProvider.get()
        .fetchLaserItemsList()
      ..request(widget.id),

      child: Scaffold(
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
            widget.id,
            style: UrbanistTextStyles.heading3,
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _searchBar(),
              const SizedBox(height: 20),

              Expanded(
                child: BlocBuilder<LaserCuttingItemsCubit, LaserCuttingItemsCubitState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => const SizedBox(),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      failure: (e) =>
                          Center(child: Text(e.error)),
                      success: (List<RivetingItemModel> projects) {
                        return ListView.builder(
                          itemCount: projects.length,
                          itemBuilder: (context, index) {
                            final project = projects[index];
                            print(project);
                            return Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 12),
                              child: PufItemCards(
                                id: project.unitCode ?? '',
                         
                         
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => PufScanDetails(projectId: widget.id, unit: project.unitCode ?? '',),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
         floatingActionButton: const ScannerButton(),
      ),
    );
  }

  Widget _searchBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Search Project ID',
          prefixIcon:
              Icon(Icons.search,    color: Color(0xFF1ad0d0),),
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
    );
  }
}


