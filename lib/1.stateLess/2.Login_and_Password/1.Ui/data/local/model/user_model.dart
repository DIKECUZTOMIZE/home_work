import 'package:home_work/1.stateLess/2.Login_and_Password/1.Ui/data/local/dbHelper.dart';

class UserModel{

  int? idUM;
  String nameUM;
  String emailUM;
  String phoneUM;
  String passwordUM;

  UserModel({this.idUM, required this.nameUM,required this.emailUM, required this.phoneUM,required this.passwordUM});

  factory UserModel.fromMapM(Map<String,dynamic>map){
    return UserModel(
        idUM: map[LPDbHelper.USER_COLUMN_ID],
        nameUM: map[LPDbHelper.USER_COLUMN_NAME],
        emailUM: map[LPDbHelper.USER_COLUMN_EMAIL],
        phoneUM: map[LPDbHelper.USER_COLUMN_PHONEUMBER],
        passwordUM: map[LPDbHelper.USER_COLUMN_PASSWORD]);
  }

  Map<String,dynamic>toMapM(){
    return {
      LPDbHelper.USER_COLUMN_NAME:nameUM,
      LPDbHelper.USER_COLUMN_EMAIL:emailUM,
      LPDbHelper.USER_COLUMN_PHONEUMBER:phoneUM,
      LPDbHelper.USER_COLUMN_PASSWORD:passwordUM
    };
  }
}