import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/blocs/test_event.dart';
import 'package:myapp/blocs/test_state.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  TestBloc() : super(TestLoadingState());

  @override
  Stream<TestState> mapEventToState(TestEvent event) async* {
    if (event is LoadTestEvent) {
      yield TestLoadingState();
      return;
    }

    yield TestNormalState();
  }

  @override
  void onEvent(TestEvent event) {
    super.onEvent(event);
    print(event);
  }

  @override
  void onChange(Change<TestState> change) {
    super.onChange(change);
    print(change);
  }

  @override
  void onTransition(Transition<TestEvent, TestState> transition) {
    super.onTransition(transition);
    print(transition);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    print('$error, $stackTrace');
    super.onError(error, stackTrace);
  }
}
