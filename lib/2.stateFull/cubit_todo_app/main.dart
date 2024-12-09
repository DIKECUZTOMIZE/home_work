import 'package:home_work/2.stateFull/cubit_todo_app/cubite_filse.dart';
import 'package:home_work/2.stateFull/cubit_todo_app/dbHelper.dart';
import 'package:home_work/2.stateFull/cubit_todo_app/page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
      runApp(
  BlocProvider(
      create: (context) =>
          CubitNoteFilse(dbHelperCubitNote: DbHelperCubitNote.getInsatnace()),
      child:
              CubitNoteApp()));
}

class CubitNoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Page1(),
    );
  }
}
