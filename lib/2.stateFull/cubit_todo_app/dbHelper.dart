import 'dart:io';

import 'package:home_work/2.stateFull/cubit_todo_app/cubit_state.dart';
import 'package:home_work/2.stateFull/cubit_todo_app//note_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbHelperCubitNote {
  DbHelperCubitNote._();

  static DbHelperCubitNote getInsatnace() => DbHelperCubitNote._();

  Database? mdataD;

  static const NOTE_TABLE = 'n_table';
  static const NOTE_COLUMN_ID = 'n_id';
  static const NOTE_COLUMN_TITLE = 'n_title';
  static const NOTE_COLUMN_DESC = 'n_desc';
  static const NOTE_COLUMN_CREATED_AT = 'n_created_at';
  static const NOTE_COLUMN_COMPELET_AT = 'n_compelet_at';

  Future<Database> initDB() async {
    mdataD = mdataD ?? await openDB();
    print('openDB');
    return mdataD!;
  }

  Future<Database> openDB() async {
    Directory dirPath = await getApplicationDocumentsDirectory();
    String dbPath = join(dirPath.path, 'noteDB.db');
    print('creat DB');
    return openDatabase(
      dbPath,
      version: 1,
      onCreate: (db, version) {
        db.execute(
            'create table $NOTE_TABLE ( $NOTE_COLUMN_ID integer primary key autoIncrement, $NOTE_COLUMN_TITLE text, $NOTE_COLUMN_DESC text, $NOTE_COLUMN_CREATED_AT text)');
      },
    );
  }

  Future<bool> addNotes(NoteModelCN newNote) async {
    Database db = await initDB();
    int rowsEffected = await db.insert(NOTE_TABLE, newNote.toMap());
    return rowsEffected > 0;
  }

  Future<List<NoteModelCN>> fectsNotes() async {
    Database db = await initDB();
    List<Map<String, dynamic>> allNotesD = await db.query(NOTE_TABLE);

    List<NoteModelCN> newDataD = [];

    for (Map<String, dynamic> eachData in allNotesD) {
      NoteModelCN eachNotes = NoteModelCN.fromMap(eachData);
      newDataD.add(eachNotes);
    }
    return newDataD;
  }

  Future<bool> updateNotes({required String titleDU, required String descDU, required int updateIdDU,}) async {

    Database db = await initDB();

    int rowsEffeted = await db.update(NOTE_TABLE,
        {
          NOTE_COLUMN_TITLE:titleDU,
           NOTE_COLUMN_DESC :descDU

        }, where: '$NOTE_COLUMN_ID = ?', whereArgs: ['$updateIdDU']);

    return rowsEffeted > 0;
  }

  Future<bool> deletNotes({required int deletIdD}) async {
    Database db = await initDB();
    int rowsEffected = await db.delete(NOTE_TABLE,
        where: '$NOTE_COLUMN_ID = ?', whereArgs: ['$deletIdD']);
    return rowsEffected > 0;
  }
}
