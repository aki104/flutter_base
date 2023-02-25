import 'package:flutter_base/util/validation/validation_type.dart';

class Validation {
  const Validation._();


  String validation(
      {required List<Validator> validationList,
        required String value,
        String? value2}) {
    List<String> message = [];
    for (var validator in validationList) {
      if (!validator.validate(value, value2)) {
        message.add(validator.getMessage());
      }
    }

    return message.isEmpty ? '' : message.first;
  }

  //全てのバリデーション判定
  bool isAllValid({required List<String> messageList}) {
    bool isValid = false;
    for (var massage in messageList) {
      if (massage.isNotEmpty) {
        isValid = true;
      }
    }

    return isValid;
  }


}

enum InputFormType {
  mail,
  password,
  rePassword,
}

extension InputFormTypeEx on InputFormType {
  List<Validator> get validatorList {
    switch (this) {
      case InputFormType.mail:
        return [RequiredValidator(), EmailValidator()];
      case InputFormType.password:
        return [RequiredValidator(), ContainsAlphanumericalValidator()];
      case InputFormType.rePassword:
        return [RequiredValidator(), MachStringValidator()];
    }
  }
}



