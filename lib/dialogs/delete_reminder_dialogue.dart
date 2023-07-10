import 'package:flutter/material.dart' show BuildContext;

import 'generic_dialog.dart';

Future<bool> showDeleteRemindertDialog(BuildContext context) {
  return showGenericDialog(
    context: context,
    title: 'Delete reminder',
    content: 'Are you sure you want to delete this reminder? You cannot undo this operation',
    optionBuilder: () => {
      'Cancel': false,
      'Delete': true,
    },
  ).then((value) => value ?? false);
}
