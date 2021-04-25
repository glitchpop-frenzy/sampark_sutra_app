import '../app_model/api.dart';

class ApiVM {
  Future<String> signup(String email, String password) async {
    final response = await Api().signUp(email, password);
    return response;
  }

  Future<void> login(String email, String password) async {
    await Api().login(email, password);
  }
}
