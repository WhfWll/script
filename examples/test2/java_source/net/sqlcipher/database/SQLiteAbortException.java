package net.sqlcipher.database;

public class SQLiteAbortException
  extends SQLiteException
{
  public SQLiteAbortException() {}
  
  public SQLiteAbortException(String paramString)
  {
    super(paramString);
  }
}
