import 'package:login_flutter_redux/counter/counter_actions.dart';

int counterReducer(int currentCount, action) {
  if (action is IncrementCountAction) {
    currentCount++;
    return currentCount;
  } else if (action is DecrementCountAction) {
    currentCount--;
    return currentCount;
  } else {
    return currentCount;
  }
}
