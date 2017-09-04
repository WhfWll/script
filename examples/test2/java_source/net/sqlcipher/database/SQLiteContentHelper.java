package net.sqlcipher.database;

import android.content.res.AssetFileDescriptor;
import android.os.MemoryFile;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.Method;

public class SQLiteContentHelper
{
  public SQLiteContentHelper() {}
  
  public static AssetFileDescriptor getBlobColumnAsAssetFile(SQLiteDatabase paramSQLiteDatabase, String paramString, String[] paramArrayOfString)
    throws FileNotFoundException
  {
    Object localObject = null;
    try
    {
      paramString = simpleQueryForBlobMemoryFile(paramSQLiteDatabase, paramString, paramArrayOfString);
      if (paramString == null) {
        throw new FileNotFoundException("No results.");
      }
    }
    catch (IOException paramSQLiteDatabase)
    {
      throw new FileNotFoundException(paramSQLiteDatabase.toString());
    }
    paramSQLiteDatabase = paramString.getClass();
    try
    {
      paramSQLiteDatabase = paramSQLiteDatabase.getDeclaredMethod("getParcelFileDescriptor", new Class[0]);
      paramSQLiteDatabase.setAccessible(true);
      paramSQLiteDatabase = (ParcelFileDescriptor)paramSQLiteDatabase.invoke(paramString, new Object[0]);
      return new AssetFileDescriptor(paramSQLiteDatabase, 0L, paramString.length());
    }
    catch (Exception paramSQLiteDatabase)
    {
      for (;;)
      {
        Log.i("SQLiteContentHelper", "SQLiteCursor.java: " + paramSQLiteDatabase);
        paramSQLiteDatabase = localObject;
      }
    }
  }
  
  /* Error */
  private static MemoryFile simpleQueryForBlobMemoryFile(SQLiteDatabase paramSQLiteDatabase, String paramString, String[] paramArrayOfString)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: aload_1
    //   5: aload_2
    //   6: invokevirtual 93	net/sqlcipher/database/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   9: astore_1
    //   10: aload_1
    //   11: ifnonnull +5 -> 16
    //   14: aconst_null
    //   15: areturn
    //   16: aload_1
    //   17: invokeinterface 99 1 0
    //   22: istore_3
    //   23: iload_3
    //   24: ifne +14 -> 38
    //   27: aload 4
    //   29: astore_0
    //   30: aload_1
    //   31: invokeinterface 102 1 0
    //   36: aload_0
    //   37: areturn
    //   38: aload_1
    //   39: iconst_0
    //   40: invokeinterface 106 2 0
    //   45: astore_2
    //   46: aload 4
    //   48: astore_0
    //   49: aload_2
    //   50: ifnull -20 -> 30
    //   53: new 58	android/os/MemoryFile
    //   56: dup
    //   57: aconst_null
    //   58: aload_2
    //   59: arraylength
    //   60: invokespecial 109	android/os/MemoryFile:<init>	(Ljava/lang/String;I)V
    //   63: astore_0
    //   64: aload_0
    //   65: aload_2
    //   66: iconst_0
    //   67: iconst_0
    //   68: aload_2
    //   69: arraylength
    //   70: invokevirtual 113	android/os/MemoryFile:writeBytes	([BIII)V
    //   73: goto -43 -> 30
    //   76: astore_0
    //   77: aload_1
    //   78: invokeinterface 102 1 0
    //   83: aload_0
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	paramSQLiteDatabase	SQLiteDatabase
    //   0	85	1	paramString	String
    //   0	85	2	paramArrayOfString	String[]
    //   22	2	3	bool	boolean
    //   1	46	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   16	23	76	finally
    //   38	46	76	finally
    //   53	73	76	finally
  }
}
