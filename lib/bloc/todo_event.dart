part of 'todo_bloc.dart';

sealed class TodoEvent {}

final class TodoEventAdd extends TodoEvent{
  final String title;
  final DateTime date;
  TodoEventAdd({
    required this.title,
    required this.date
  });

}

final class TodoEventComplete extends TodoEvent{
  final int index;

  TodoEventComplete({required this.index});

}

final class TodoSelectedDate extends TodoEvent{
  final DateTime date;

  TodoSelectedDate({required this.date});
}