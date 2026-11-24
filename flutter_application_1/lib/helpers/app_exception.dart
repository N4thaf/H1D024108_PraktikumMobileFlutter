class AppException implements Exception {
  final String? _message;
  final String? _prefix;

  AppException([this._message, this._prefix]);

  @override
  String toString() {
    return "$_prefix$_message";
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, "Error During Communication: ");
}

class BadRequestException extends AppException {
  BadRequestException([dynamic message]) : super(message?.toString(), "Invalid Request: ");
}

class UnauthorisedException extends AppException {
  UnauthorisedException([dynamic message]) : super(message?.toString(), "Unauthorised: ");
}

class UnprocessableEntityException extends AppException {
  UnprocessableEntityException([dynamic message])
      : super(message?.toString(), "Unprocessable Entity: ");
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(message, "Invalid Input: ");
}
