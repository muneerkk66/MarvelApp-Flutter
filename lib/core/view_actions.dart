abstract class ViewAction {}

class DisplayMessage extends ViewAction {
  final String message;

  DisplayMessage(this.message);

  @override
  // ignore: hash_and_equals
  bool operator ==(other) {
    if (other is DisplayMessage) {
      return other.message == message;
    } else {
      return false;
    }
  }
}

class CloseScreen extends ViewAction {}

class NavigateScreen<T> extends ViewAction {
  final T target;

  NavigateScreen(this.target);

  @override
  // ignore: hash_and_equals
  bool operator ==(other) {
    if (other is NavigateScreen) {
      return other.target == target;
    } else {
      return false;
    }
  }
}
