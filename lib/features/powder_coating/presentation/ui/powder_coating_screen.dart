import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steel_soul/features/powder_coating/presentation/bloc/bloc_provider.dart';
import 'package:steel_soul/features/powder_coating/presentation/ui/powder_coating_item_details.dart';
import 'package:steel_soul/features/powder_coating/presentation/widgets/powder_coating_cards.dart';
import 'package:steel_soul/features/powder_coating/presentation/widgets/scanner_button.dart';



import 'package:steel_soul/styles/urbanist_text_styles.dart';

class PowderCoatingScreen extends StatefulWidget { 
  const PowderCoatingScreen({super.key});

  @override
  State<PowderCoatingScreen> createState() => _PowderCoatingScreenState();
}

class _PowderCoatingScreenState extends State<PowderCoatingScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = "";

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  // Helper method to trigger the Bloc refresh
  Future<void> _onRefresh(BuildContext context) async {
    // This calls the request() method again to fetch fresh data
    context.read<LaserCuttingCubit>().request();

    // Optional: Add a small delay if your API is too fast
    // to ensure the spinner is visible to the user
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PowderCoatingBlocProvider.get().fetchLaserList()..request(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: _backButton(context),
          title: Text('Riveting', style: UrbanistTextStyles.heading3),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _searchBar(),
              const SizedBox(height: 20),
              Expanded(
                child: BlocBuilder<LaserCuttingCubit, LaserCuttingCubitState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => const SizedBox(),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      failure: (e) => Center(child: Text(e.error)),
                      success: (projects) {
                        // Filter logic
                        final filteredProjects = projects.where((project) {
                          final id = project.projectId?.toLowerCase() ?? '';
                          return id.contains(_searchQuery.toLowerCase());
                        }).toList();

                        // Wrap the list in RefreshIndicator
                        return RefreshIndicator(
                          color: Color(0xFFffb23f),
                          onRefresh: () => _onRefresh(context),
                          child: filteredProjects.isEmpty
                              ? ListView(
                                  // Using ListView so pull-to-refresh still works when empty
                                  children: const [
                                    SizedBox(height: 100),
                                    Center(child: Text("No projects found")),
                                  ],
                                )
                              : ListView.builder(
                                  itemCount: filteredProjects.length,
                                  physics:
                                      const AlwaysScrollableScrollPhysics(), // Ensures pull-to-refresh always works
                                  itemBuilder: (context, index) {
                                    final project = filteredProjects[index];
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                        bottom: 12,
                                      ),
                                      child: PowderCoatingCards(
                                        id: project.projectId ?? '',
                                        date: project.date ?? '',
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) =>
                                                  PowderCoatingItemDetails(
                                                    id: project.projectId ?? '',
                                                  ),
                                            ),
                                          );
                                        },
                                      ),
                                    );
                                  },
                                ),
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
      child: TextField(
        controller: _searchController,
        onChanged: (value) => setState(() => _searchQuery = value),
        decoration: InputDecoration(
          hintText: 'Search Project ID',
          prefixIcon: const Icon(Icons.search, color: Color(0xFFffb23f),),
          suffixIcon: _searchQuery.isNotEmpty
              ? IconButton(
                  icon: const Icon(Icons.clear, size: 20),
                  onPressed: () {
                    _searchController.clear();
                    setState(() => _searchQuery = "");
                  },
                )
              : null,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
        ),
      ),
    );
  }

  Widget _backButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFFffb23f),
        borderRadius: BorderRadius.circular(8),
      ),
      child: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
