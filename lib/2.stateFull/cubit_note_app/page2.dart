import 'package:home_work/2.stateFull/cubit_note_app/cubite_filse.dart';
import 'package:home_work/2.stateFull/cubit_note_app/dbHelper.dart';
import 'package:home_work/2.stateFull/cubit_note_app/note_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class Page2 extends StatelessWidget {
  DbHelperCubitNote dbHelperCubitNote = DbHelperCubitNote.getInsatnace();
  var titleController = TextEditingController();
  var descController = TextEditingController();
  String dueDate2 = '';

  bool isUpdate;
  int? id2;
  String title2;
  String desc2;
  Page2({this.id2, this.title2 = '', this.desc2 = '', this.isUpdate = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
      ),
      body: SizedBox(
        height: 500,
        width: double.infinity,
        child: Column(
          children: [
            Center(
              child: Text(isUpdate ? 'Update' : 'Note Add'),
            ),
            SizedBox(
              height: 11,
            ),
            TextField(
              controller: titleController,
            ),
            SizedBox(
              height: 11,
            ),
            SizedBox(
              width: 100,
              child: OutlinedButton(
                  onPressed: () async {
                    DateTime? seletedDate = await showDatePicker(
                        context: context,
                        firstDate: DateTime.now(),
                        lastDate: DateTime(9999));
                    print(seletedDate!.millisecondsSinceEpoch.toString());
                    dueDate2 =
                        await seletedDate.millisecondsSinceEpoch.toString();
                  },
                  child: Text('Date')),
            ),
            SizedBox(
              height: 11,
            ),
            TextField(
              controller: descController,
            ),
            SizedBox(
              height: 11,
            ),
            Row(
              children: [
                OutlinedButton(
                    onPressed: ()async {
                      if (titleController.text.isNotEmpty && descController.text.isNotEmpty&&dueDate2.isNotEmpty) {
                        // bool check = false;
                        // if(isUpdate){
                        //    check =  await dbHelperCubitNote.updateNotes(
                        //       titleDU:titleController.text,
                        //       descDU: descController.text,
                        //       updateIdDU:id2!);
                        // }
                        // else  {
                        //   check = await dbHelperCubitNote.addNotes(NoteModelCN(
                        //       titleM: titleController.text,
                        //       descM: descController.text,
                        //       created_atM: DateTime.now().millisecondsSinceEpoch.toString()));
                        // }
                        //
                        // if(check){
                        //   Navigator.pop(context);
                        // }


                        if (isUpdate) {
                          context.read<CubitNoteFilse>().updateNotes(
                              updateIdF: id2!,
                              titleF: titleController.text,
                              descF: descController.text,);

                          Navigator.pop(context);
                        } else {
                          context.read<CubitNoteFilse>().addNotes(NoteModelCN(
                              titleM: titleController.text,
                              descM: descController.text,
                              created_atM: dueDate2
                          ));

                          Navigator.pop(context);
                        }
                      }
                    },
                    child: Text(isUpdate ? 'Upadte' : 'Add')),
                SizedBox(
                  width: 11,
                ),
                OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancel'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
