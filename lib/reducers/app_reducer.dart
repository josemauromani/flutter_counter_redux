import 'package:login_flutter_redux/models/app_state.dart';
import 'package:login_flutter_redux/banners/banner_reducer.dart';
import 'package:login_flutter_redux/counter/counter_reducer.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    count: counterReducer(state.count, action),
    banner: bannerReducer(state.banner, action)
  );
}
