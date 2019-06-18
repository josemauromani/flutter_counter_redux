import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'banner_actions.dart';
import 'package:login_flutter_redux/models/app_state.dart';
import 'package:redux/redux.dart';

class TrocaBannerButton extends StatelessWidget {
  TrocaBannerButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, VoidCallback>(
      converter: (Store<AppState> st) {
        return () {
          st.dispatch(TrocaBanner());
        };
      },
      builder: (BuildContext context, VoidCallback tbanner) {
        return RaisedButton(
          onPressed: tbanner,
          color: Colors.red,
          child: Text('Trocar Banner',style: TextStyle(color: Colors.white),),
        );
      },
    );
  }
}
