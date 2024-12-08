import 'package:home_work/2.stateFull/cubit_todo_app//dbHelper.dart';

class NoteModelCN {
  int? idM;
  String titleM;
  String descM;
  String created_atM;

  NoteModelCN({
    this.idM,
    required this.titleM,
    required this.descM,
    required this.created_atM,
  });

  factory NoteModelCN.fromMap(Map<String, dynamic> map) {
    return NoteModelCN(
        idM: map[DbHelperCubitNote.NOTE_COLUMN_ID],
        titleM: map[DbHelperCubitNote.NOTE_COLUMN_TITLE],
        descM: map[DbHelperCubitNote.NOTE_COLUMN_DESC],
        created_atM: map[DbHelperCubitNote.NOTE_COLUMN_CREATED_AT],
    );

  }

  Map<String, dynamic> toMap() {
    return {
      DbHelperCubitNote.NOTE_COLUMN_TITLE: titleM,
      DbHelperCubitNote.NOTE_COLUMN_DESC: descM,
      DbHelperCubitNote.NOTE_COLUMN_CREATED_AT: created_atM,
    };
  }
}
