
import 'package:home_work/2.stateFull/cubit_todo_app/cubite_filse.dart';
import 'package:home_work/2.stateFull/cubit_todo_app/dbHelper.dart';
import 'package:home_work/2.stateFull/cubit_todo_app/note_model.dart';
import 'package:home_work/2.stateFull/cubit_todo_app/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';



class Page1 extends StatefulWidget {
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
// DbHelperCubitNote dbHelperCubitNote =DbHelperCubitNote.getInsatnace();


 // List<NoteModelCN> mData1 = [];

  DateFormat dtFormate = DateFormat.MMMd();

  @override
  void initState() {

    super.initState();
    context.read<CubitNoteFilse>().initalizeNotes();
     // getNotes();
  }


  @override
  Widget build(BuildContext context) {
var  mData1=  context.watch<CubitNoteFilse>().state.mDataS;
    return Scaffold(
      appBar: AppBar(
        title: Text('Page1'),
      ),
      body: mData1.isNotEmpty
          ? ListView.builder(
        itemCount: mData1.length,
        itemBuilder: (context, index) =>
            ListTile(
              //leading: mData1['${index++}'],

              title: Text(mData1[index].titleM),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(mData1[index].descM),

                   Text(dtFormate.format(DateTime.fromMillisecondsSinceEpoch(int.parse(mData1[index].created_atM))))
                ],
              ),
              trailing: SizedBox(
                width: 100,
                child: Row(
                  children: [
                    InkWell(

                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) =>
                            Page2(
                              isUpdate: true,
                              id2: mData1[index].idM,
                              title2: mData1[index].titleM,
                              desc2: mData1[index].descM,


                            ),));
                      },
                      child: Icon(Icons.edit),
                    ),
                    SizedBox(
                      width: 11,
                    ),
                    InkWell(
                        onTap: () async{

                          context.read<CubitNoteFilse>().deletnotes(deletIdF:mData1[index].idM!);
                          // context.watch()<CubitNoteFilse>().deletnotes(deletIdF:mData1[index].idM!);
                           context.watch()<CubitNoteFilse>().initalizeNotes();
                          //
                          Navigator.pop(context);



                          // context.read<CubitNoteFilse>().deletnotes(
                          //     deletIdF: mData1[index].idM!);
                        },
                        child: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ))
                  ],
                  ),
              ),
            ),
      )
          : Center(child: Text('Not Add Note')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Page2(),
              ));
        },
        child: Text('Add'),
      ),
    );
  }
}
