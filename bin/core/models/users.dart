class Users {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Users({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'completed': completed,
    };
  }

  factory Users.fromMap(Map<String, dynamic> map) {
    return Users(
      userId: map['userId'] as int,
      id: map['id'] as int,
      title: map['title'] as String,
      completed: map['completed'] as bool,
    );
  }

  @override
  String toString() {
    return 'Users{userId: $userId, id: $id, title: $title, completed: $completed}';
  }
}