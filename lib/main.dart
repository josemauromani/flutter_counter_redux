import 'package:flutter/material.dart';
import 'package:login_flutter_redux/pages/home_page.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:login_flutter_redux/models/app_state.dart';
import 'package:login_flutter_redux/reducers/app_reducer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String title = 'Meu aplicativo';

  // store armazena a árovre de estados
  final store = Store<AppState>(
    appReducer,
    initialState: AppState(),
    middleware: [],
  );

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        home: HomePage(title),
      ),
    );
  }
}
