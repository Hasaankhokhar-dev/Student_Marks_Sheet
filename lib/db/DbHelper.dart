import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/mark.dart';
import '../models/student.dart';

class Dbhelper {
  static Database? _database;

  static Future<Database> get database async {
    if (_database != null) {
      return await _database!;
    } else {
      _database = await _initDb();
      return await _database!;
    }
  }

  static Future<Database> _initDb() async {
    String path = join(await getDatabasesPath(), 'StudentInfo.db');
    return openDatabase(path, version: 1, onCreate: _createTable);
  }

  static Future<void> _createTable(Database db, int version) async {
    await db.execute('''
  create table student(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    roll_no INTEGER NOT NULL,
    class_name TEXT NOT NULL
   )''');
    // Ek table ka ID, doosri table mein use karna = Foreign Key
    await db.execute('''
  create table marks(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  student_id INTEGER NOT NULL,
  subject TEXT NOT NULL,
  obtained_marks REAL NOT NULL,
  total_marks INTEGER NOT NULL,
  FOREIGN KEY (student_id) REFERENCES student(id)  
  )''');
  }

  static Future<void> insertStudent(Student student) async {
    Database db = await database;
    await db.insert('student', student.toMap());
  }

  static Future<List<Student>> getAStudents() async {
    Database db = await database;
    List<Map<String, dynamic>> students = await db.query('student');
    return students.map((map) => Student.fromMap(map)).toList();
  }

  static Future<void> deleteStudent(int id) async {
    Database db = await database;
    await db.delete('student', where: 'id=?', whereArgs: [id]);
  }

  static Future<void> insertMarks(Marks marks) async {
    Database db = await database;
    await db.insert('marks', marks.toMap());
  }

  static Future<List<Marks>> getMarks(int studentId) async {
    Database db = await database;
    List<Map<String, dynamic>> marks = await db.query(
      'marks',
      where: 'student_id = ?',
      whereArgs: [studentId],
    );
    return marks.map((map) => Marks.fromMap(map)).toList();
  }

  static Future<void> deleteMarks(int id) async {
    Database db = await database;
    await db.delete('marks', where: 'id=?', whereArgs: [id]);
  }
}
