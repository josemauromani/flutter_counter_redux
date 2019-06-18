import 'package:flutter/foundation.dart';
import 'package:login_flutter_redux/items/+models/Item.dart';

class AppState {
  final int count;
  final String banner;
  final List<Item> items;

  AppState({
    this.count = 0,
    this.banner = "https://picsum.photos/id/600/500/500",
    @required this.items,
  });

  AppState copyWith({int count, String banner, List<Item> items}) {
    return AppState(
      count: count ?? this.count,
      banner: banner ?? this.banner,
      items: items ?? this.items,
    );
  }

  @override
  String toString() {
    return 'AppState{count: $count, banner: $banner, items: $items}';
  }
}
