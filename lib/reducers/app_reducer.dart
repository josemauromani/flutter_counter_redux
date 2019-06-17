import 'package:login_flutter_redux/models/app_state.dart';
import 'package:login_flutter_redux/reducers/banner_reducer.dart';
import 'package:login_flutter_redux/reducers/counter_reducer.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    isLoading: false,
    count: counterReducer(state.count, action),
    banner: bannerReducer(state.banner, action)
  );
}
