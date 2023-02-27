
import 'package:base_app/ui/login/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginProvider = AutoDisposeStateNotifierProvider<LoginNotifier, LoginState>((ref) {
  return LoginNotifier();
});


class LoginNotifier extends StateNotifier<LoginState> {
  LoginNotifier(): super(const LoginState()){
    init();
  }

  void init() {
    state = state.copyWith(
        mailController: TextEditingController(),
      passwordController: TextEditingController(),
      confPasswordController: TextEditingController(),
    );
  }

  void onTapLoginButton() {
    debugPrint('ログインボタンたっぷ');
  }

  void aaa() {
    TextEditingController mailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController rePasswordController = TextEditingController();

    String mailErrorMsg = '';
    String passwordErrorMsg = '';
    String rePasswordErrorMsg = '';

    bool isValidation = false;

    // void buttonTap() {
    //   validationCheck();
    // }

    // void validationCheck() {
    //   mailErrorMsg = validation(
    //       validationList: ValidationKey.mail.keyValidation,
    //       value: mailController.text);
    //
    //   passwordErrorMsg = validation(
    //       validationList: ValidationKey.password.keyValidation,
    //       value: passwordController.text);
    //
    //   rePasswordErrorMsg = validation(
    //       validationList: ValidationKey.rePassword.keyValidation,
    //       value: rePasswordController.text,
    //       value2: passwordController.text);
    //
    //   isValidation = isAllValid(
    //       messageList: [mailErrorMsg, passwordErrorMsg, rePasswordErrorMsg]);
    // }
  }
}