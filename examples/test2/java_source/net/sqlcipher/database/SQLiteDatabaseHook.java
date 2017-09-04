package net.sqlcipher.database;

public abstract interface SQLiteDatabaseHook
{
  public abstract void postKey(SQLiteDatabase paramSQLiteDatabase);
  
  public abstract void preKey(SQLiteDatabase paramSQLiteDatabase);
}
