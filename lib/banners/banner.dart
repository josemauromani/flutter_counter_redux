import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:login_flutter_redux/app_state.dart';
import 'package:redux/redux.dart';

class BannerLoja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
        converter: _ViewModel.pegaDoStore,
        builder: (BuildContext context, _ViewModel vb) {
          return Column(children: <Widget>[
            Image.network(vb.banner.toString()),
          ]);
        });
  }
}

class _ViewModel {
  final String banner;

  _ViewModel({
    @required this.banner,
  });

  static _ViewModel pegaDoStore(Store<AppState> st) {
    return _ViewModel(banner: st.state.banner);
  }
}
