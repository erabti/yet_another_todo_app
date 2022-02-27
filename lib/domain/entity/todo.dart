class Todo {
  const Todo({
    required this.text,
    required this.createdAt,
    this.completed = false,
  });

  final String text;
  final DateTime createdAt;
  final bool completed;

  Todo copyWith({
    String? text,
    DateTime? createdAt,
    bool? completed,
  }) =>
      Todo(
        text: text ?? this.text,
        createdAt: createdAt ?? this.createdAt,
        completed: completed ?? this.completed,
      );
}
