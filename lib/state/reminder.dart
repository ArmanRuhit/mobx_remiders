import 'package:mobx/mobx.dart';

part 'reminder.g.dart';

class Reminder = _Reminder with _$Reminder;

abstract class _Reminder with Store {
  final String id;
  final DateTime creationDate;

  @observable
  String text;

  @observable
  bool isDone;

  _Reminder({
    required this.id,
    required this.creationDate,
    required this.text,
    required this.isDone,
  });

  @override
  bool operator ==(covariant _Reminder other) {
    return id == other.id &&
        text == other.text &&
        isDone == other.isDone &&
        creationDate == other.creationDate;
  }

  @override
  // TODO: implement hashCode
  int get hashCode => Object.hash(id, creationDate, text, isDone);
}
