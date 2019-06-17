import 'package:flutter/material.dart';
import 'package:login_flutter_redux/containers/counter/counter.dart';
import 'package:login_flutter_redux/containers/banners/banner.dart';
import 'package:login_flutter_redux/containers/banners/troca_banner.dart';
import 'package:login_flutter_redux/containers/counter/increase_counters.dart';

class HomePage extends StatelessWidget {
  final String title;

  HomePage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Counter(),
              BannerLoja(),
              TrocaBannerButton(),
            ],
          ),
        ),
        floatingActionButton: IncreaseCountButton());
  }
}
