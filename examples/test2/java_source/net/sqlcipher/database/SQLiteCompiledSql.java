package net.sqlcipher.database;

import android.util.Log;

class SQLiteCompiledSql
{
  private static final String TAG = "SQLiteCompiledSql";
  SQLiteDatabase mDatabase;
  private boolean mInUse = false;
  private String mSqlStmt = null;
  private Throwable mStackTrace = null;
  int nHandle = 0;
  int nStatement = 0;
  
  SQLiteCompiledSql(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    if (!paramSQLiteDatabase.isOpen()) {
      throw new IllegalStateException("database " + paramSQLiteDatabase.getPath() + " already closed");
    }
    mDatabase = paramSQLiteDatabase;
    mSqlStmt = paramString;
    mStackTrace = new DatabaseObjectNotClosedException().fillInStackTrace();
    nHandle = mNativeHandle;
    compile(paramString, true);
  }
  
  private void compile(String paramString, boolean paramBoolean)
  {
    if (!mDatabase.isOpen()) {
      throw new IllegalStateException("database " + mDatabase.getPath() + " already closed");
    }
    if (paramBoolean) {
      mDatabase.lock();
    }
    try
    {
      native_compile(paramString);
      return;
    }
    finally
    {
      mDatabase.unlock();
    }
  }
  
  private final native void native_compile(String paramString);
  
  private final native void native_finalize();
  
  /* Error */
  boolean acquire()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 33	net/sqlcipher/database/SQLiteCompiledSql:mInUse	Z
    //   8: istore_1
    //   9: iload_1
    //   10: ifeq +9 -> 19
    //   13: iconst_0
    //   14: istore_1
    //   15: aload_0
    //   16: monitorexit
    //   17: iload_1
    //   18: ireturn
    //   19: aload_0
    //   20: iconst_1
    //   21: putfield 33	net/sqlcipher/database/SQLiteCompiledSql:mInUse	Z
    //   24: iload_2
    //   25: istore_1
    //   26: getstatic 95	net/sqlcipher/database/SQLiteDebug:DEBUG_ACTIVE_CURSOR_FINALIZATION	Z
    //   29: ifeq -14 -> 15
    //   32: ldc 8
    //   34: new 43	java/lang/StringBuilder
    //   37: dup
    //   38: invokespecial 44	java/lang/StringBuilder:<init>	()V
    //   41: ldc 97
    //   43: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: aload_0
    //   47: getfield 27	net/sqlcipher/database/SQLiteCompiledSql:nStatement	I
    //   50: invokevirtual 100	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   53: ldc 102
    //   55: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   61: invokestatic 108	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   64: pop
    //   65: iload_2
    //   66: istore_1
    //   67: goto -52 -> 15
    //   70: astore_3
    //   71: aload_0
    //   72: monitorexit
    //   73: aload_3
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	SQLiteCompiledSql
    //   8	59	1	bool1	boolean
    //   1	65	2	bool2	boolean
    //   70	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   4	9	70	finally
    //   19	24	70	finally
    //   26	65	70	finally
  }
  
  /* Error */
  protected void finalize()
    throws Throwable
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 27	net/sqlcipher/database/SQLiteCompiledSql:nStatement	I
    //   4: istore_1
    //   5: iload_1
    //   6: ifne +8 -> 14
    //   9: aload_0
    //   10: invokespecial 113	java/lang/Object:finalize	()V
    //   13: return
    //   14: getstatic 95	net/sqlcipher/database/SQLiteDebug:DEBUG_ACTIVE_CURSOR_FINALIZATION	Z
    //   17: ifeq +36 -> 53
    //   20: ldc 8
    //   22: new 43	java/lang/StringBuilder
    //   25: dup
    //   26: invokespecial 44	java/lang/StringBuilder:<init>	()V
    //   29: ldc 115
    //   31: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: aload_0
    //   35: getfield 27	net/sqlcipher/database/SQLiteCompiledSql:nStatement	I
    //   38: invokevirtual 100	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   41: ldc 117
    //   43: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   49: invokestatic 108	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   52: pop
    //   53: aload_0
    //   54: getfield 29	net/sqlcipher/database/SQLiteCompiledSql:mSqlStmt	Ljava/lang/String;
    //   57: invokevirtual 123	java/lang/String:length	()I
    //   60: istore_2
    //   61: new 43	java/lang/StringBuilder
    //   64: dup
    //   65: invokespecial 44	java/lang/StringBuilder:<init>	()V
    //   68: ldc 125
    //   70: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: astore_3
    //   74: aload_0
    //   75: getfield 29	net/sqlcipher/database/SQLiteCompiledSql:mSqlStmt	Ljava/lang/String;
    //   78: astore 4
    //   80: iload_2
    //   81: istore_1
    //   82: iload_2
    //   83: bipush 100
    //   85: if_icmple +6 -> 91
    //   88: bipush 100
    //   90: istore_1
    //   91: ldc 8
    //   93: aload_3
    //   94: aload 4
    //   96: iconst_0
    //   97: iload_1
    //   98: invokevirtual 129	java/lang/String:substring	(II)Ljava/lang/String;
    //   101: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   107: aload_0
    //   108: getfield 31	net/sqlcipher/database/SQLiteCompiledSql:mStackTrace	Ljava/lang/Throwable;
    //   111: invokestatic 133	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   114: pop
    //   115: aload_0
    //   116: invokevirtual 136	net/sqlcipher/database/SQLiteCompiledSql:releaseSqlStatement	()V
    //   119: goto -110 -> 9
    //   122: astore_3
    //   123: aload_0
    //   124: invokespecial 113	java/lang/Object:finalize	()V
    //   127: aload_3
    //   128: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	129	0	this	SQLiteCompiledSql
    //   4	94	1	i	int
    //   60	26	2	j	int
    //   73	21	3	localStringBuilder	StringBuilder
    //   122	6	3	localObject	Object
    //   78	17	4	str	String
    // Exception table:
    //   from	to	target	type
    //   0	5	122	finally
    //   14	53	122	finally
    //   53	80	122	finally
    //   91	119	122	finally
  }
  
  void release()
  {
    try
    {
      if (SQLiteDebug.DEBUG_ACTIVE_CURSOR_FINALIZATION) {
        Log.v("SQLiteCompiledSql", "Released DbObj (id#" + nStatement + ") back to DB cache");
      }
      mInUse = false;
      return;
    }
    finally {}
  }
  
  void releaseSqlStatement()
  {
    if (nStatement != 0) {
      if (SQLiteDebug.DEBUG_ACTIVE_CURSOR_FINALIZATION) {
        Log.v("SQLiteCompiledSql", "closed and deallocated DbObj (id#" + nStatement + ")");
      }
    }
    try
    {
      mDatabase.lock();
      native_finalize();
      nStatement = 0;
      return;
    }
    finally
    {
      mDatabase.unlock();
    }
  }
}
