import 'dart:async';
import 'dart:ui';

class Debouncer {
  final Duration duration;
  Debouncer({
    this.duration = const Duration(milliseconds: 500),
  });
  Timer? _timer;

  void run(VoidCallback action) {
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
    }
    _timer = Timer(
      duration,
      action,
    );
  }
}
