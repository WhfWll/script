package cn.domob.android.e;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import android.provider.BaseColumns;
import cn.domob.android.i.f;
import org.json.JSONArray;
import org.json.JSONException;

class b
  extends SQLiteOpenHelper
{
  private static final int b = 1;
  private static final String c = "Freq.db";
  private static b e = null;
  private static final String f = " TEXT";
  private static final String g = " LONG";
  private static final String h = " INTEGER";
  private static final String i = ",";
  private static final String j = "CREATE TABLE IF NOT EXISTS freq(_id INTEGER PRIMARY KEY,frequency_id TEXT,imp_times INTEGER,imp_limit_times INTEGER,click_times INTEGER,click_limit_times INTEGER,end_time LONG,update_time LONG );";
  private static final String k = "DROP TABLE IF EXISTS freq";
  f a = new f(b.class.getSimpleName());
  private SQLiteDatabase d = null;
  
  private b(Context paramContext)
  {
    super(paramContext.getApplicationContext(), "Freq.db", null, 1);
    try
    {
      d = getWritableDatabase();
      return;
    }
    catch (SQLiteException paramContext)
    {
      a.a(paramContext);
    }
  }
  
  protected static b a(Context paramContext)
  {
    try
    {
      if ((e == null) || (!e.e())) {
        e = new b(paramContext);
      }
      paramContext = e;
      return paramContext;
    }
    finally {}
  }
  
  private boolean a(a paramA)
  {
    if (!e()) {
      return false;
    }
    a.a("insert a new data : " + paramA.toString());
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("frequency_id", paramA.a());
    localContentValues.put("imp_times", Integer.valueOf(paramA.b()));
    localContentValues.put("imp_limit_times", Integer.valueOf(paramA.c()));
    localContentValues.put("click_times", Integer.valueOf(paramA.d()));
    localContentValues.put("click_limit_times", Integer.valueOf(paramA.e()));
    localContentValues.put("end_time", Long.valueOf(paramA.f()));
    localContentValues.put("update_time", Long.valueOf(paramA.g()));
    if (d.insert("freq", null, localContentValues) <= 0L)
    {
      a.e("Insert: failed! " + localContentValues.toString());
      return false;
    }
    a.b("insert successfully");
    return true;
  }
  
  private String c(JSONArray paramJSONArray)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("(");
    int m = 0;
    for (;;)
    {
      if (m >= paramJSONArray.length()) {
        break label133;
      }
      Object localObject = null;
      try
      {
        String str = paramJSONArray.getString(m);
        localObject = str;
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          a.a(localJSONException);
        }
      }
      if ((localObject != null) && (((String)localObject).length() > 0))
      {
        localObject = ((String)localObject).split("_");
        if ((localObject != null) && (localObject.length == 4))
        {
          localObject = localObject[0];
          localStringBuffer.append("frequency_id");
          localStringBuffer.append(" = ");
          localStringBuffer.append((String)localObject);
          if (m != paramJSONArray.length() - 1) {
            localStringBuffer.append(" or ");
          }
        }
      }
      m += 1;
    }
    label133:
    localStringBuffer.append(")");
    return localStringBuffer.toString();
  }
  
  private boolean e()
  {
    if ((d != null) && (d.isOpen()) && (!d.isReadOnly())) {
      return true;
    }
    a.e("freq database is not available");
    return false;
  }
  
  /* Error */
  protected int a(String paramString, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aload_0
    //   4: invokespecial 83	cn/domob/android/e/b:e	()Z
    //   7: ifne +7 -> 14
    //   10: iconst_m1
    //   11: istore_3
    //   12: iload_3
    //   13: ireturn
    //   14: aload_0
    //   15: getfield 72	cn/domob/android/e/b:d	Landroid/database/sqlite/SQLiteDatabase;
    //   18: ldc -98
    //   20: iconst_1
    //   21: anewarray 195	java/lang/String
    //   24: dup
    //   25: iconst_0
    //   26: ldc -34
    //   28: aastore
    //   29: aload_1
    //   30: aload_2
    //   31: aconst_null
    //   32: aconst_null
    //   33: aconst_null
    //   34: invokevirtual 226	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   37: astore_2
    //   38: aload_2
    //   39: ifnull +41 -> 80
    //   42: aload_2
    //   43: astore_1
    //   44: aload_2
    //   45: invokeinterface 231 1 0
    //   50: istore 4
    //   52: iload 4
    //   54: istore_3
    //   55: aload_2
    //   56: ifnull -44 -> 12
    //   59: iload 4
    //   61: istore_3
    //   62: aload_2
    //   63: invokeinterface 234 1 0
    //   68: ifne -56 -> 12
    //   71: aload_2
    //   72: invokeinterface 237 1 0
    //   77: iload 4
    //   79: ireturn
    //   80: aload_2
    //   81: ifnull +18 -> 99
    //   84: aload_2
    //   85: invokeinterface 234 1 0
    //   90: ifne +9 -> 99
    //   93: aload_2
    //   94: invokeinterface 237 1 0
    //   99: iconst_m1
    //   100: ireturn
    //   101: astore 5
    //   103: aconst_null
    //   104: astore_2
    //   105: aload_2
    //   106: astore_1
    //   107: aload_0
    //   108: getfield 70	cn/domob/android/e/b:a	Lcn/domob/android/i/f;
    //   111: aload 5
    //   113: invokevirtual 79	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   116: aload_2
    //   117: ifnull -18 -> 99
    //   120: aload_2
    //   121: invokeinterface 234 1 0
    //   126: ifne -27 -> 99
    //   129: aload_2
    //   130: invokeinterface 237 1 0
    //   135: goto -36 -> 99
    //   138: astore_1
    //   139: aload 5
    //   141: astore_2
    //   142: aload_2
    //   143: ifnull +18 -> 161
    //   146: aload_2
    //   147: invokeinterface 234 1 0
    //   152: ifne +9 -> 161
    //   155: aload_2
    //   156: invokeinterface 237 1 0
    //   161: aload_1
    //   162: athrow
    //   163: astore 5
    //   165: aload_1
    //   166: astore_2
    //   167: aload 5
    //   169: astore_1
    //   170: goto -28 -> 142
    //   173: astore 5
    //   175: goto -70 -> 105
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	178	0	this	b
    //   0	178	1	paramString	String
    //   0	178	2	paramArrayOfString	String[]
    //   11	51	3	m	int
    //   50	28	4	n	int
    //   1	1	5	localObject1	Object
    //   101	39	5	localException1	Exception
    //   163	5	5	localObject2	Object
    //   173	1	5	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   14	38	101	java/lang/Exception
    //   14	38	138	finally
    //   44	52	163	finally
    //   107	116	163	finally
    //   44	52	173	java/lang/Exception
  }
  
  protected Cursor a(String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    if (!e()) {
      return null;
    }
    SQLiteQueryBuilder localSQLiteQueryBuilder = new SQLiteQueryBuilder();
    localSQLiteQueryBuilder.setTables("freq");
    return localSQLiteQueryBuilder.query(d, paramArrayOfString1, paramString1, paramArrayOfString2, null, null, paramString2);
  }
  
  protected void a()
  {
    if (!e()) {
      return;
    }
    a.d("empty database");
    d.delete("freq", null, null);
  }
  
  protected void a(JSONArray paramJSONArray)
  {
    a.b("imp Times of current ad Add One");
    if ((paramJSONArray == null) || (paramJSONArray.length() == 0) || (!e()))
    {
      a.b("freqJSONArray is not available");
      return;
    }
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("update ").append("freq").append(" set ").append("imp_times").append(" = ").append("imp_times").append(" + 1, ").append("update_time").append(" = ").append(System.currentTimeMillis()).append(" where ").append(c(paramJSONArray)).append(" and ").append("end_time").append(">").append(System.currentTimeMillis());
    paramJSONArray = localStringBuffer.toString();
    a.a(paramJSONArray);
    try
    {
      d.execSQL(paramJSONArray);
      return;
    }
    catch (SQLException paramJSONArray)
    {
      a.a(paramJSONArray);
    }
  }
  
  protected boolean a(String paramString)
  {
    if (!e()) {
      return false;
    }
    a.b("deleted from DB which freqId is " + paramString);
    d.delete("freq", "frequency_id= ?", new String[] { paramString });
    return true;
  }
  
  protected boolean a(String paramString, int paramInt1, int paramInt2)
  {
    if (!e()) {
      return false;
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("imp_limit_times", Integer.valueOf(paramInt1));
    localContentValues.put("click_limit_times", Integer.valueOf(paramInt2));
    a.a("update DB, and the updated content is " + localContentValues.toString());
    long l = System.currentTimeMillis();
    paramInt1 = d.update("freq", localContentValues, "frequency_id = ? and end_time > ?", new String[] { paramString, String.valueOf(l) });
    if (paramInt1 == 1)
    {
      a.b("update BD successfully");
      return true;
    }
    a.e("update DB failed and the affected row number is " + paramInt1);
    return false;
  }
  
  protected boolean a(String paramString, int paramInt1, int paramInt2, long paramLong)
  {
    a localA = new a();
    localA.a(paramString);
    localA.a(0);
    localA.b(paramInt1);
    localA.c(0);
    localA.d(paramInt2);
    localA.a(paramLong);
    localA.b(System.currentTimeMillis());
    return a(localA);
  }
  
  /* Error */
  protected String b()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 83	cn/domob/android/e/b:e	()Z
    //   4: ifne +9 -> 13
    //   7: ldc_w 334
    //   10: astore_1
    //   11: aload_1
    //   12: areturn
    //   13: aload_0
    //   14: getfield 72	cn/domob/android/e/b:d	Landroid/database/sqlite/SQLiteDatabase;
    //   17: ldc -98
    //   19: iconst_1
    //   20: anewarray 195	java/lang/String
    //   23: dup
    //   24: iconst_0
    //   25: ldc_w 336
    //   28: aastore
    //   29: aconst_null
    //   30: aconst_null
    //   31: aconst_null
    //   32: aconst_null
    //   33: aconst_null
    //   34: invokevirtual 226	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   37: astore_2
    //   38: aload_2
    //   39: ifnull +321 -> 360
    //   42: aload_2
    //   43: astore_1
    //   44: aload_2
    //   45: invokeinterface 231 1 0
    //   50: pop
    //   51: aload_2
    //   52: astore_1
    //   53: aload_2
    //   54: invokeinterface 339 1 0
    //   59: pop
    //   60: ldc_w 341
    //   63: astore_3
    //   64: aload_2
    //   65: astore_1
    //   66: aload_2
    //   67: invokeinterface 344 1 0
    //   72: ifne +263 -> 335
    //   75: aload_2
    //   76: astore_1
    //   77: getstatic 348	java/lang/System:out	Ljava/io/PrintStream;
    //   80: ldc_w 350
    //   83: invokevirtual 355	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   86: aload_2
    //   87: astore_1
    //   88: new 6	cn/domob/android/e/b$a
    //   91: dup
    //   92: aload_0
    //   93: invokespecial 315	cn/domob/android/e/b$a:<init>	(Lcn/domob/android/e/b;)V
    //   96: astore 4
    //   98: aload_2
    //   99: astore_1
    //   100: aload 4
    //   102: aload_2
    //   103: aload_2
    //   104: ldc 107
    //   106: invokeinterface 359 2 0
    //   111: invokeinterface 360 2 0
    //   116: invokevirtual 316	cn/domob/android/e/b$a:a	(Ljava/lang/String;)V
    //   119: aload_2
    //   120: astore_1
    //   121: aload 4
    //   123: aload_2
    //   124: aload_2
    //   125: ldc 115
    //   127: invokeinterface 359 2 0
    //   132: invokeinterface 364 2 0
    //   137: invokevirtual 319	cn/domob/android/e/b$a:a	(I)V
    //   140: aload_2
    //   141: astore_1
    //   142: aload 4
    //   144: aload_2
    //   145: aload_2
    //   146: ldc -127
    //   148: invokeinterface 359 2 0
    //   153: invokeinterface 364 2 0
    //   158: invokevirtual 321	cn/domob/android/e/b$a:b	(I)V
    //   161: aload_2
    //   162: astore_1
    //   163: aload 4
    //   165: aload_2
    //   166: aload_2
    //   167: ldc -123
    //   169: invokeinterface 359 2 0
    //   174: invokeinterface 364 2 0
    //   179: invokevirtual 323	cn/domob/android/e/b$a:c	(I)V
    //   182: aload_2
    //   183: astore_1
    //   184: aload 4
    //   186: aload_2
    //   187: aload_2
    //   188: ldc -119
    //   190: invokeinterface 359 2 0
    //   195: invokeinterface 364 2 0
    //   200: invokevirtual 325	cn/domob/android/e/b$a:d	(I)V
    //   203: aload_2
    //   204: astore_1
    //   205: aload 4
    //   207: aload_2
    //   208: aload_2
    //   209: ldc -115
    //   211: invokeinterface 359 2 0
    //   216: invokeinterface 368 2 0
    //   221: invokevirtual 328	cn/domob/android/e/b$a:a	(J)V
    //   224: aload_2
    //   225: astore_1
    //   226: aload 4
    //   228: aload_2
    //   229: aload_2
    //   230: ldc -102
    //   232: invokeinterface 359 2 0
    //   237: invokeinterface 368 2 0
    //   242: invokevirtual 330	cn/domob/android/e/b$a:b	(J)V
    //   245: aload_2
    //   246: astore_1
    //   247: getstatic 348	java/lang/System:out	Ljava/io/PrintStream;
    //   250: aload 4
    //   252: invokevirtual 99	cn/domob/android/e/b$a:toString	()Ljava/lang/String;
    //   255: invokevirtual 355	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   258: aload_2
    //   259: astore_1
    //   260: new 88	java/lang/StringBuilder
    //   263: dup
    //   264: invokespecial 90	java/lang/StringBuilder:<init>	()V
    //   267: aload_3
    //   268: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   271: aload 4
    //   273: invokevirtual 99	cn/domob/android/e/b$a:toString	()Ljava/lang/String;
    //   276: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   279: ldc_w 370
    //   282: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   285: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   288: astore_3
    //   289: aload_2
    //   290: astore_1
    //   291: aload_2
    //   292: invokeinterface 373 1 0
    //   297: pop
    //   298: goto -234 -> 64
    //   301: astore_3
    //   302: aload_2
    //   303: astore_1
    //   304: aload_0
    //   305: getfield 70	cn/domob/android/e/b:a	Lcn/domob/android/i/f;
    //   308: aload_3
    //   309: invokevirtual 79	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   312: aload_2
    //   313: ifnull +18 -> 331
    //   316: aload_2
    //   317: invokeinterface 234 1 0
    //   322: ifne +9 -> 331
    //   325: aload_2
    //   326: invokeinterface 237 1 0
    //   331: ldc_w 375
    //   334: areturn
    //   335: aload_3
    //   336: astore_1
    //   337: aload_2
    //   338: ifnull -327 -> 11
    //   341: aload_3
    //   342: astore_1
    //   343: aload_2
    //   344: invokeinterface 234 1 0
    //   349: ifne -338 -> 11
    //   352: aload_2
    //   353: invokeinterface 237 1 0
    //   358: aload_3
    //   359: areturn
    //   360: aload_2
    //   361: ifnull -30 -> 331
    //   364: aload_2
    //   365: invokeinterface 234 1 0
    //   370: ifne -39 -> 331
    //   373: aload_2
    //   374: invokeinterface 237 1 0
    //   379: goto -48 -> 331
    //   382: astore_2
    //   383: aconst_null
    //   384: astore_1
    //   385: aload_1
    //   386: ifnull +18 -> 404
    //   389: aload_1
    //   390: invokeinterface 234 1 0
    //   395: ifne +9 -> 404
    //   398: aload_1
    //   399: invokeinterface 237 1 0
    //   404: aload_2
    //   405: athrow
    //   406: astore_2
    //   407: goto -22 -> 385
    //   410: astore_3
    //   411: aconst_null
    //   412: astore_2
    //   413: goto -111 -> 302
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	416	0	this	b
    //   10	389	1	localObject1	Object
    //   37	337	2	localCursor	Cursor
    //   382	23	2	localObject2	Object
    //   406	1	2	localObject3	Object
    //   412	1	2	localObject4	Object
    //   63	226	3	str	String
    //   301	58	3	localException1	Exception
    //   410	1	3	localException2	Exception
    //   96	176	4	localA	a
    // Exception table:
    //   from	to	target	type
    //   44	51	301	java/lang/Exception
    //   53	60	301	java/lang/Exception
    //   66	75	301	java/lang/Exception
    //   77	86	301	java/lang/Exception
    //   88	98	301	java/lang/Exception
    //   100	119	301	java/lang/Exception
    //   121	140	301	java/lang/Exception
    //   142	161	301	java/lang/Exception
    //   163	182	301	java/lang/Exception
    //   184	203	301	java/lang/Exception
    //   205	224	301	java/lang/Exception
    //   226	245	301	java/lang/Exception
    //   247	258	301	java/lang/Exception
    //   260	289	301	java/lang/Exception
    //   291	298	301	java/lang/Exception
    //   13	38	382	finally
    //   44	51	406	finally
    //   53	60	406	finally
    //   66	75	406	finally
    //   77	86	406	finally
    //   88	98	406	finally
    //   100	119	406	finally
    //   121	140	406	finally
    //   142	161	406	finally
    //   163	182	406	finally
    //   184	203	406	finally
    //   205	224	406	finally
    //   226	245	406	finally
    //   247	258	406	finally
    //   260	289	406	finally
    //   291	298	406	finally
    //   304	312	406	finally
    //   13	38	410	java/lang/Exception
  }
  
  protected void b(JSONArray paramJSONArray)
  {
    a.b("click Times of current ad Add One");
    if ((paramJSONArray == null) || (paramJSONArray.length() == 0) || (!e()))
    {
      a.b("freqJSONArray is not available");
      return;
    }
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("update ").append("freq").append(" set ").append("click_times").append(" = ").append("click_times").append(" + 1, ").append("update_time").append(" = ").append(System.currentTimeMillis()).append(" where ").append(c(paramJSONArray)).append(" and ").append("end_time").append(">").append(System.currentTimeMillis());
    paramJSONArray = localStringBuffer.toString();
    a.a(paramJSONArray);
    try
    {
      d.execSQL(paramJSONArray);
      return;
    }
    catch (SQLException paramJSONArray)
    {
      a.a(paramJSONArray);
    }
  }
  
  protected void c()
  {
    if (!e()) {
      return;
    }
    a.b("delete expired data from DB");
    long l = System.currentTimeMillis();
    d.delete("freq", "end_time < ?", new String[] { String.valueOf(l) });
  }
  
  protected void d()
  {
    if ((d != null) && (d.isOpen())) {
      d.close();
    }
    if (e != null) {
      e = null;
    }
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    try
    {
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS freq(_id INTEGER PRIMARY KEY,frequency_id TEXT,imp_times INTEGER,imp_limit_times INTEGER,click_times INTEGER,click_limit_times INTEGER,end_time LONG,update_time LONG );");
      return;
    }
    catch (SQLException paramSQLiteDatabase)
    {
      a.a(paramSQLiteDatabase);
    }
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    try
    {
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS freq");
      onCreate(paramSQLiteDatabase);
      return;
    }
    catch (SQLException localSQLException)
    {
      for (;;)
      {
        a.a(localSQLException);
      }
    }
  }
  
  protected class a
  {
    private String b;
    private int c;
    private int d;
    private int e;
    private int f;
    private long g;
    private long h;
    
    protected a() {}
    
    protected String a()
    {
      return b;
    }
    
    protected void a(int paramInt)
    {
      c = paramInt;
    }
    
    protected void a(long paramLong)
    {
      g = paramLong;
    }
    
    protected void a(String paramString)
    {
      b = paramString;
    }
    
    protected int b()
    {
      return c;
    }
    
    protected void b(int paramInt)
    {
      d = paramInt;
    }
    
    protected void b(long paramLong)
    {
      h = paramLong;
    }
    
    protected int c()
    {
      return d;
    }
    
    protected void c(int paramInt)
    {
      e = paramInt;
    }
    
    protected int d()
    {
      return e;
    }
    
    protected void d(int paramInt)
    {
      f = paramInt;
    }
    
    protected int e()
    {
      return f;
    }
    
    protected long f()
    {
      return g;
    }
    
    protected long g()
    {
      return h;
    }
    
    public String toString()
    {
      return "Freq [freqId=" + b + ", impTimes=" + c + ", impLimitTimes=" + d + ", clickTimes=" + e + ", clickLimitTimes=" + f + ", endTimestamp=" + g + ", updateTimestamp=" + h + "]";
    }
  }
  
  protected static abstract class b
    implements BaseColumns
  {
    protected static final String a = "freq";
    protected static final String b = "frequency_id";
    protected static final String c = "imp_times";
    protected static final String d = "imp_limit_times";
    protected static final String e = "click_times";
    protected static final String f = "click_limit_times";
    protected static final String g = "end_time";
    protected static final String h = "update_time";
    
    protected b() {}
  }
}
