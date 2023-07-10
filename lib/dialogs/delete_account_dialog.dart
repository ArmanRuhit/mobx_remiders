import 'package:flutter/material.dart' show BuildContext;
import 'generic_dialog.dart';

Future<bool> showDeleteAccountDialog(BuildContext context) {
  return showGenericDialog(
    context: context,
    title: 'Delete account',
    content: 'Are you sure you want to delete your account? You cannot undo this operation',
    optionBuilder: () => {
      'Cancel': false,
      'Delete account': true,
    },
  ).then((value) => value ?? false);
}
