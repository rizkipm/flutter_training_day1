class ModelTask {
  final String id;
  final String title;
  final bool isCompleted;
  final DateTime creatAt;

  const ModelTask({
    required this.id,
    required this.title,
    this.isCompleted = false,
    required this.creatAt,
  });

  ModelTask copyWith({String? title, bool? isCompleted}) {
    return ModelTask(
      id: id,
      title: title ?? this.title,
      isCompleted: isCompleted ?? this.isCompleted,
      creatAt: creatAt,
    );
  }
}

enum TaskFilter { all, active, completed }
