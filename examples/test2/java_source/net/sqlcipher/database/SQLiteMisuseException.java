package net.sqlcipher.database;

public class SQLiteMisuseException
  extends SQLiteException
{
  public SQLiteMisuseException() {}
  
  public SQLiteMisuseException(String paramString)
  {
    super(paramString);
  }
}
