part of 'counter_bloc.dart';


@freezed
class CounterEvent with _$CounterEvent {
  const factory CounterEvent.start() = CounterStartEvent;

  factory CounterEvent.reset() = CounterResetEvent;

  factory CounterEvent.increment() = CounterIncrementEvent;
}



// import 'package:equatable/equatable.dart';
//
// abstract class CounterEvent extends Equatable {
//   const CounterEvent();
//
//   @override
//   List<Object?> get props => [];
// }
//
// class CounterStartEvent extends CounterEvent {}
//
// class CounterResetEvent extends CounterEvent {}
//
// class CounterIncrementEvent extends CounterEvent {}
