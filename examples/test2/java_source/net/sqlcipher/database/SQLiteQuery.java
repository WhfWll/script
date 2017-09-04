package net.sqlcipher.database;

import android.os.SystemClock;
import android.util.Log;
import net.sqlcipher.CursorWindow;

public class SQLiteQuery
  extends SQLiteProgram
{
  private static final String TAG = "Cursor";
  private String[] mBindArgs;
  private boolean mClosed = false;
  private int mOffsetIndex;
  
  SQLiteQuery(SQLiteDatabase paramSQLiteDatabase, String paramString, int paramInt, String[] paramArrayOfString)
  {
    super(paramSQLiteDatabase, paramString);
    mOffsetIndex = paramInt;
    mBindArgs = paramArrayOfString;
  }
  
  private final native int native_column_count();
  
  private final native String native_column_name(int paramInt);
  
  private final native int native_fill_window(CursorWindow paramCursorWindow, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public void bindDouble(int paramInt, double paramDouble)
  {
    mBindArgs[(paramInt - 1)] = Double.toString(paramDouble);
    if (!mClosed) {
      super.bindDouble(paramInt, paramDouble);
    }
  }
  
  public void bindLong(int paramInt, long paramLong)
  {
    mBindArgs[(paramInt - 1)] = Long.toString(paramLong);
    if (!mClosed) {
      super.bindLong(paramInt, paramLong);
    }
  }
  
  public void bindNull(int paramInt)
  {
    mBindArgs[(paramInt - 1)] = null;
    if (!mClosed) {
      super.bindNull(paramInt);
    }
  }
  
  public void bindString(int paramInt, String paramString)
  {
    mBindArgs[(paramInt - 1)] = paramString;
    if (!mClosed) {
      super.bindString(paramInt, paramString);
    }
  }
  
  public void close()
  {
    super.close();
    mClosed = true;
  }
  
  int columnCountLocked()
  {
    acquireReference();
    try
    {
      int i = native_column_count();
      return i;
    }
    finally
    {
      releaseReference();
    }
  }
  
  String columnNameLocked(int paramInt)
  {
    acquireReference();
    try
    {
      String str = native_column_name(paramInt);
      return str;
    }
    finally
    {
      releaseReference();
    }
  }
  
  int fillWindow(CursorWindow paramCursorWindow, int paramInt1, int paramInt2)
  {
    long l = SystemClock.uptimeMillis();
    mDatabase.lock();
    mDatabase.logTimeStat(mSql, l, "GETLOCK:");
    try
    {
      acquireReference();
      try
      {
        paramCursorWindow.acquireReference();
        paramInt1 = native_fill_window(paramCursorWindow, paramCursorWindow.getStartPosition(), mOffsetIndex, paramInt1, paramInt2);
        if (SQLiteDebug.DEBUG_SQL_STATEMENTS) {
          Log.d("Cursor", "fillWindow(): " + mSql);
        }
        mDatabase.logTimeStat(mSql, l);
        paramCursorWindow.releaseReference();
        releaseReference();
        paramCursorWindow = mDatabase;
      }
      catch (IllegalStateException localIllegalStateException)
      {
        for (;;)
        {
          paramInt1 = 0;
          paramCursorWindow.releaseReference();
          releaseReference();
          paramCursorWindow = mDatabase;
        }
      }
      catch (SQLiteDatabaseCorruptException localSQLiteDatabaseCorruptException)
      {
        mDatabase.onCorruption();
        throw localSQLiteDatabaseCorruptException;
      }
      finally
      {
        paramCursorWindow.releaseReference();
      }
      paramCursorWindow.unlock();
      return paramInt1;
    }
    finally
    {
      releaseReference();
      mDatabase.unlock();
    }
  }
  
  void requery()
  {
    if (mBindArgs != null)
    {
      int j = mBindArgs.length;
      int i = 0;
      while (i < j) {
        try
        {
          super.bindString(i + 1, mBindArgs[i]);
          i += 1;
        }
        catch (SQLiteMisuseException localSQLiteMisuseException)
        {
          StringBuilder localStringBuilder = new StringBuilder("mSql " + mSql);
          i = 0;
          while (i < j)
          {
            localStringBuilder.append(" ");
            localStringBuilder.append(mBindArgs[i]);
            i += 1;
          }
          localStringBuilder.append(" ");
          throw new IllegalStateException(localStringBuilder.toString(), localSQLiteMisuseException);
        }
      }
    }
  }
  
  public String toString()
  {
    return "SQLiteQuery: " + mSql;
  }
}
