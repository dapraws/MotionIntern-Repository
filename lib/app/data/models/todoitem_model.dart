class TodoItemModel {
  final String id;
  final String name;
  final bool status;
  final void Function(String) onDelete;
  final void Function(String, bool) onToggle;

  TodoItemModel({
    required this.id,
    required this.name,
    required this.status,
    required this.onDelete,
    required this.onToggle,
  });
}
