abstract class CounterState {}

class InitalState extends CounterState {

}

class UpdateState extends CounterState {
  final int counter;

  UpdateState(this.counter);
}
