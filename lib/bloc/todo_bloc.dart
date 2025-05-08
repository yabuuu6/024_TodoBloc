import 'package:bloc/bloc.dart';
import 'package:bloc2/todo.dart';
import 'package:meta/meta.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoLoaded(todos: [], selectedDate: null)) {
    on<TodoEventAdd>((event, emit) {
      final currentState = state;
      if (currentState is TodoLoaded) {
        final List<Todo> updatedTodos = List.from(currentState.todos);
        updatedTodos.add(
          Todo(
            title: event.title,
            isCompleted: false,
            date: event.date,
          ),
        );
        emit(
          TodoLoaded(
            todos: updatedTodos,
            selectedDate: currentState.selectedDate,
          ),
        );
      }
    });

    
  }
}
