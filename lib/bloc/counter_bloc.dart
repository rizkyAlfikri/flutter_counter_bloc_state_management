import 'dart:async';

enum CounterEvent { Increment, Decrement }

class CounterBloc {
  StreamController<CounterEvent> _eventController =
      StreamController<CounterEvent>();
  StreamSink get eventSink => _eventController.sink;

  StreamController<int> _counterController = StreamController<int>();
  StreamSink<int> get _counterSink => _counterController.sink;
  Stream<int> get counterStream => _counterController.stream;
  int counter = 0;

  CounterBloc() {
    _counterSink.add(counter);
    _eventController.stream.listen((event) => _mapEventToState(event));
  }

  void _mapEventToState(CounterEvent event) {
    if (event == CounterEvent.Increment) {
      counter++;
    } else {
      counter--;
    }
    _counterSink.add(counter);
  }

  void dispose() {
    _counterController.close();
    _eventController.close();
  }
}
