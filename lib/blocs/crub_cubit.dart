abstract class CrudState {}

class CrudStateInitial {}

class CrudLoading {}

class CrudError {
  final String message;

  CrudError({required this.message});
}

class CrudListLoaded<T> {
  final List<T> data;

  CrudListLoaded({required this.data});
}

class CrudLoaded<T> {
  final T data;

  CrudLoaded({required this.data});
}
