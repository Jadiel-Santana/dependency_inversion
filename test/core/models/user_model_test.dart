import 'dart:convert';
import 'package:test/test.dart';
import '../../../bin/core/models/user_model.dart';
import '../../mock/user_mock.dart';

void main() {
  test('Should return success when comparing attributes of User model class', () {
    final user = UserModel(
      userId: 10,
      id: 200,
      title: 'Jadiel Santana',
      completed: true,
    );

    expect(user.userId, equals(10));
    expect(user.id, equals(200));
    expect(user.title, equals('Jadiel Santana'));
    expect(user.completed, equals(true));
  });

  test('Should return success when comparing attributes of User model class to User Json Mock', () {
    final user = UserModel.fromJson(jsonDecode(userMockJson));
    expect(user.userId, equals(1));
    expect(user.id, equals(1));
    expect(user.title, equals('delectus aut autem'));
    expect(user.completed, equals(false));
  });
}