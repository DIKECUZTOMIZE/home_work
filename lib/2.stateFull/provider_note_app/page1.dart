
import 'package:home_work/2.stateFull/provider_note_app/cubite_filse.dart';
import 'package:home_work/2.stateFull/provider_note_app/dbHelper.dart';
import 'package:home_work/2.stateFull/provider_note_app/note_model.dart';
import 'package:home_work/2.stateFull/provider_note_app/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';



class Page1 extends StatefulWidget {
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
// DbHelperCubitNote dbHelperCubitNote =DbHelperCubitNote.getInsatnace();


  List<NoteModelCN> mData1 = [];

  DateFormat dtFormate = DateFormat.MMMd();

  @override
  void initState() {

    super.initState();
    context.read<ProviderNoteFilse>().initalizeNotes();
  }


  @override
  Widget build(BuildContext context) {
 mData1=  context.watch<ProviderNoteFilse>().getNots();
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
              subtitle: Text(mData1[index].descM),
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

                          context.read<ProviderNoteFilse>().deletnotes(deletIdF:mData1[index].idM!);
                          // context.watch()<CubitNoteFilse>().deletnotes(deletIdF:mData1[index].idM!);
                           context.watch()<ProviderNoteFilse>().initalizeNotes();
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
