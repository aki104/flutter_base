import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({

    @Default(null) TextEditingController? mailController,
    @Default(null) TextEditingController? passwordController,
    @Default(null) TextEditingController? confPasswordController,

    @Default('') String mailErrorMsg,
    @Default('') String passwordErrorMsg,
    @Default('') String confPasswordErrorMsg,

  }) = _LoginState;

}