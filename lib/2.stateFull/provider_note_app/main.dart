import 'package:home_work/2.stateFull/provider_note_app/cubite_filse.dart';
import 'package:home_work/2.stateFull/provider_note_app/dbHelper.dart';
import 'package:home_work/2.stateFull/provider_note_app/page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() {
      runApp(
  ChangeNotifierProvider(create: (context) =>ProviderNoteFilse(dbHelperCubitNote:DbHelperCubitNote.getInsatnace()) ,child: CubitNoteApp()));
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
