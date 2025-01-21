import 'package:home_work/1.stateLess/2.Login_and_Password/1.Ui/data/local/model/user_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

class LPDbHelper{

  LPDbHelper._();

  static  LPDbHelper getInstance() => LPDbHelper._();

  static const USERKEY =  'userId';

  static const USER_TABLE = 'u_table';
  static const  USER_COLUMN_ID = 'u_id';
  static const  USER_COLUMN_NAME = 'u_name';
  static const  USER_COLUMN_EMAIL = 'u_email';
  static const  USER_COLUMN_PHONEUMBER = 'u_phon';
  static const  USER_COLUMN_PASSWORD = 'u_password';

  Database? mDataD;

  Future<Database>initDB()async{
    mDataD = mDataD ?? await openDB();
    return mDataD!;
  }

  Future<Database>openDB()async{

    var dirPath = await getApplicationDocumentsDirectory();
    var dbPath = join(dirPath.path,'noteDB.db');

    return openDatabase( dbPath, version: 1,onCreate: (db, version) {
      db.execute('create table $USER_TABLE ( $USER_COLUMN_ID integer primary key autoIncrement, $USER_COLUMN_NAME text, $USER_COLUMN_EMAIL text unique, $USER_COLUMN_PHONEUMBER text, $USER_COLUMN_PASSWORD text)');
    });
  }

   Future<bool>ifEmailCheckAlreadyExist({emailCD,phoneCD})async{

    var db = await initDB();

    List<Map<String,dynamic>> emailAndPhone =await db.query(USER_TABLE,
    where: '$USER_COLUMN_EMAIL = ? AND $USER_COLUMN_PHONEUMBER =?',whereArgs: [emailCD,phoneCD]);

    var prefs = await SharedPreferences.getInstance();
        prefs.setString(USERKEY,emailAndPhone[0][USER_COLUMN_ID]);
       return emailAndPhone.isNotEmpty;
   }

   Future<bool>registerUser(UserModel newUser)async{
        var db = await initDB();

        int rowsEffected = await db.insert(USER_TABLE, newUser.toMapM());
        return rowsEffected >0;
   }

   Future<bool>authentication({emailAD,passworAD})async{
    var db = await initDB();
    List<Map<String,dynamic>> emailAndPassword = await db.query(USER_TABLE,
      where: '$USER_COLUMN_EMAIL =? ANdD $USER_COLUMN_PASSWORD = ?',whereArgs: [emailAD,passworAD]);
     return  emailAndPassword.isNotEmpty;
  }


}