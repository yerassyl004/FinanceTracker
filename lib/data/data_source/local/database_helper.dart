import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database? _database;

  DatabaseHelper._privateConstructor();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'finance_app.db');

    return await openDatabase(path,
        version: 2, // Increment version number if needed
        onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    // Create transactions table
    await db.execute('''
    CREATE TABLE IF NOT EXISTS transactions (
      id TEXT PRIMARY KEY,
      cash REAL NOT NULL,
      date TEXT NOT NULL,
      note TEXT,
      account TEXT,
      category TEXT,
      typeSpending INTEGER NOT NULL,
      destination TEXT
    )
  ''');

    // Create accounts table
    await db.execute('''
    CREATE TABLE IF NOT EXISTS accounts (
      id TEXT PRIMARY KEY,
      cash REAL NOT NULL,
      icon TEXT NOT NULL,
      title TEXT NOT NULL
    )
  ''');

    await db.execute('''
CREATE TABLE IF NOT EXISTS categories (
  id TEXT PRIMARY KEY,
  title TEXT NOT NULL,
  icon TEXT NOT NULL,
  type INTEGER NOT NULL
)
''');
  }
}
