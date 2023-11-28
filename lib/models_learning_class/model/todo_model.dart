class Todo {
  String? title;
  String? description;
  String? category;
  int? timestamp;
  int? priority;
  String? user_id;
  bool? isCompleted;
  String? id;

  Todo(
      {this.title,
      this.description,
      this.category,
      this.timestamp,
      this.priority,
      this.user_id,
      this.isCompleted,
      this.id});

  static List<Todo> fromJsonList(List<dynamic> json) {
    List<Todo> todos = [];
    for (var perItem in json) {
      var jsonPerItem = perItem as Map<String, dynamic>;
      todos.add(Todo(
        title: jsonPerItem['title'],
        description: jsonPerItem['description'],
        category: jsonPerItem['category'],
        timestamp: jsonPerItem['timestamp'],
        priority: jsonPerItem['priority'],
        user_id: jsonPerItem['user_id'],
        isCompleted: jsonPerItem['isCompleted'],
        id: jsonPerItem['id'],
      ));
    }
    return todos;
  }
}
