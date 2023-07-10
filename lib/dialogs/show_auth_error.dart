import 'package:flutter/material.dart' show BuildContext;
import 'package:mobx_reminders/auth/auth_error.dart';

import 'generic_dialog.dart';

Future<bool> showAuthError({required AuthError authError, required BuildContext context}) {
  return showGenericDialog(
    context: context,
    title: authError.dialogueTitle,
    content: authError.dialogueText,
    optionBuilder: () => {
      'Cancel': false,
      'Log out': true,
    },
  ).then((value) => value ?? false);
}
