class AppState {
  final int count;
  final bool isLoading;
  final String banner;

  AppState({this.count = 0, this.isLoading = false, this.banner = "https://picsum.photos/id/600/500/500"});

  AppState copyWith({int count, bool isLoading, String banner}) {
    return AppState(
        count: count ?? this.count, 
        isLoading: isLoading ?? this.isLoading,
        banner: banner ?? this.banner
        );
  }

  @override
  String toString() {
    return 'AppState{isLoading: $isLoading, count: $count, banner: $banner}' ;
  }
}
