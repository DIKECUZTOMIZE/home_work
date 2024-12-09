import 'package:home_work/2.stateFull/cubit_note_app/dbHelper.dart';

class NoteModelCN {
  int? idM;
  String titleM;
  String descM;


  NoteModelCN({
    this.idM,
    required this.titleM,
    required this.descM,
  });

  factory NoteModelCN.fromMap(Map<String, dynamic> map) {
    return NoteModelCN(
        idM: map[DbHelperCubitNote.NOTE_COLUMN_ID],
        titleM: map[DbHelperCubitNote.NOTE_COLUMN_TITLE],
        descM: map[DbHelperCubitNote.NOTE_COLUMN_DESC],
    );

  }

  Map<String, dynamic> toMap() {
    return {
      DbHelperCubitNote.NOTE_COLUMN_TITLE: titleM,
      DbHelperCubitNote.NOTE_COLUMN_DESC: descM,
    };
  }
}
