import 'package:flutter_test/flutter_test.dart';
import 'package:testing/repository.dart';

void main() {
  late AuthRepository authRepository;

  setUp(() {
    authRepository = AuthRepository();
  });

  test('Successfully logged in user', () async {
    expect(
      await authRepository.login(email: 'james@mail.com', password: '123456'),
      true,
    );
  });
}