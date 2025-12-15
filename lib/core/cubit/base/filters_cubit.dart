import 'package:steel_soul/core/cubit/base/base_cubit.dart';
import 'package:steel_soul/core/model/page_view_filters.dart';

abstract class FiltersCubit extends AppBaseCubit<PageViewFilters> {
  FiltersCubit(super.initialState);
  void onSearch([String? query]);
  void onChangeStatus(String status);
}
