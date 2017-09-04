package net.sqlcipher.database;

import net.sqlcipher.SQLException;

public class SQLiteException
  extends SQLException
{
  public SQLiteException() {}
  
  public SQLiteException(String paramString)
  {
    super(paramString);
  }
}
