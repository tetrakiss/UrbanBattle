import 'package:flutter/material.dart';
import 'package:urbanbattle/res/custom_colors.dart';
import 'package:urbanbattle/utils/database.dart';
import 'package:urbanbattle/utils/validator.dart';
import 'custom_form_field.dart';

class LoginForm extends StatefulWidget {
  final FocusNode focusNode;
  const LoginForm({
    Key? key,
    required this.focusNode,
  }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _uidController = TextEditingController();

  final _loginInFormkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _loginInFormkey,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
            right: 8.0,
            bottom: 24.0,
          ),
          child: Column(
            children: [
              CustomFormField(
                controller: _uidController,
                focusNode: widget.focusNode,
                keyboardType: TextInputType.text,
                inputAction: TextInputAction.done,
                validator: (value) => Validator.validateUserID(
                  uid: value,
                ),
                label: 'UserID',
                hint: 'Введите ID пользователя',
              ),
            ],
          ),
        )
      ]),
    );
  }
}
