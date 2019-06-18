class AppState {
  final int count;
  final String banner;

  AppState({this.count = 0, this.banner = "https://picsum.photos/id/600/500/500"});

  AppState copyWith({int count, bool isLoading, String banner}) {
    return AppState(
        count: count ?? this.count, 
        banner: banner ?? this.banner
        );
  }

  @override
  String toString() {
    return 'AppState{count: $count, banner: $banner}' ;
  }
}
