import 'package:home_work/2.stateFull/provider_todo_app/cubit_state.dart';
import 'package:home_work/2.stateFull/provider_todo_app/dbHelper.dart';
import 'package:home_work/2.stateFull/provider_todo_app/note_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProviderNoteFilse extends ChangeNotifier {
  DbHelperCubitNote dbHelperCubitNote;

  List<NoteModelCN> mDataF = [];
  ProviderNoteFilse({required this.dbHelperCubitNote}) ;

  void addNotes(NoteModelCN noteF) async {
    bool check = await dbHelperCubitNote.addNotes(noteF);

    if (check) {
      mDataF = await dbHelperCubitNote.fectsNotes();
      notifyListeners();
    }
  }

  List<NoteModelCN> getNots()=>mDataF;

  void initalizeNotes() async {
    mDataF = await dbHelperCubitNote.fectsNotes();
     notifyListeners();
  }

  void updateNotes({required int updateIdF,required String titleF,required String descF}) async{

     bool check = await dbHelperCubitNote.updateNotes(
          titleDU: titleF,
          descDU: descF,
         updateIdDU: updateIdF,);
     if(check){
       mDataF = await dbHelperCubitNote.fectsNotes();
       notifyListeners();
     }
  }

  void deletnotes({required int deletIdF} )async {

    bool cehck = await dbHelperCubitNote.deletNotes(deletIdD: deletIdF);
    if (cehck) {
    mDataF = await dbHelperCubitNote.fectsNotes();
    notifyListeners();
    }
  }
 }
