import 'package:rxdart/subjects.dart';

abstract class BusEvent {}

abstract class EventBus {
  void sendEvent(BusEvent event);

  Stream<BusEvent> get events;
}

class EventBusImpl extends EventBus {
  // ignore: close_sinks
  final _channel = PublishSubject<BusEvent>();

  @override
  Stream<BusEvent> get events => _channel.stream;

  @override
  void sendEvent(BusEvent event) {
    _channel.sink.add(event);
  }
}
