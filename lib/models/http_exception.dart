class HttpException implements Exception {
  // this implement all the function of Exception class in dart

  String message;
  HttpException(this.message);

  @override
  String toString() {
    return message;
  }
}
