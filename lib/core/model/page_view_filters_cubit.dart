import 'package:steel_soul/core/cubit/base/base_cubit.dart';
import 'package:steel_soul/core/model/page_view_filters.dart';

abstract class PageViewFiltersCubit extends AppBaseCubit<PageViewFilters> {
  PageViewFiltersCubit(super.state);

  void onChangeStatus(String status);

  void onSearch([String? query]);
}
