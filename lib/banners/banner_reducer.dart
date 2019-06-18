import 'dart:math';
import 'banner_actions.dart';

String bannerReducer(String currentBanner, action) {
  if (action is MostraBanner) {
    return currentBanner;
  }
  if (action is TrocaBanner) {
    var listaBanner = [
      "https://picsum.photos/id/686/500/500",
      "https://picsum.photos/id/682/500/500",
      "https://picsum.photos/id/683/500/500"
    ];
    var bannerAtual = listaBanner[Random().nextInt(3)];
    print(bannerAtual);
    return bannerAtual;
  } else {
    return currentBanner;
  }
}
