import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widget/validation_form/validation_form.dart';
import 'notifier.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginProvider);
    final notifier = ref.read(loginProvider.notifier);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValidationInputForm(
                controller: state.mailController,
                errorMsg: state.mailErrorMsg,
                hintText: 'メールアドレス',
                inputType: TextInputType.emailAddress,
              ),
              ValidationInputForm(
                controller: state.passwordController,
                errorMsg: state.passwordErrorMsg,
                hintText: 'パスワード',
                inputType: TextInputType.emailAddress,
              ),
              ValidationInputForm(
                controller: state.confPasswordController,
                errorMsg: state.confPasswordErrorMsg,
                hintText: 'パスワード再入力',
                inputType: TextInputType.emailAddress,
              ),
              ElevatedButton(
                onPressed: () {
                  notifier.onTapLoginButton();
                },
                child: const Text('ログイン'),
              ),
              const SizedBox(
                height: 20,
              ),
              // Text(
              //   state.isValidation ? 'バリデーションエラー' : 'OK',
              //   style: const TextStyle(color: Colors.pink),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
