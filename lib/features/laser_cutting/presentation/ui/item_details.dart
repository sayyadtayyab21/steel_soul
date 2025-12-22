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


// class ItemDetails extends StatefulWidget {
//   const ItemDetails({super.key});

//   @override
//   State<ItemDetails> createState() => _ItemDetailsState();
// }

// class _ItemDetailsState extends State<ItemDetails> {
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

import 'package:steel_soul/features/laser_cutting/model/laser_item_model.dart';
import 'package:steel_soul/features/laser_cutting/presentation/bloc/bloc_provider.dart';
import 'package:steel_soul/features/laser_cutting/presentation/ui/laser_scan_details.dart';
import 'package:steel_soul/features/laser_cutting/presentation/widgets/item_cards.dart';

import 'package:steel_soul/styles/urbanist_text_styles.dart';

class ItemDetails extends StatefulWidget {
  final String id;
  const ItemDetails({super.key, required this.id});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (_) =>
    LaserCuttingBlocProvider.get()
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
              color: const Color(0xFF5FD6FF),
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
                          Center(child: Text("$e.message")),
                      success: (List<LaserItemModel> projects) {
                        return ListView.builder(
                          itemCount: projects.length,
                          itemBuilder: (context, index) {
                            final project = projects[index];
                            print(project);
                            return Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 12),
                              child: ItemCards(
                                id: project.unitCode ?? '',
                                scan:project.laserCuttingStatus??'',
                         
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => LaserScanDetails(projectId: widget.id, unit: project.unitCode ?? '',),
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
        floatingActionButton: SizedBox(
        width: 108,
        height: 42,
        child: FloatingActionButton.extended(
          onPressed: () {

          },
          backgroundColor: const Color(0xFF62CEFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), 
            side: const BorderSide(
              color: Colors.white, 
              width: 1, 
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
      ),
    );
  }

  Widget _searchBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search Project ID',
          prefixIcon:
              const Icon(Icons.search, color: Color(0xFF5FD6FF)),
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
    );
  }
}


