package com.lidroid.xutils.db.table;

import com.lidroid.xutils.DbUtils;
import com.lidroid.xutils.DbUtils.DaoConfig;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public class Table
{
  private static final HashMap<String, Table> tableMap = new HashMap();
  private boolean checkedDatabase;
  public final HashMap<String, Column> columnMap;
  public final DbUtils db;
  public final HashMap<String, Finder> finderMap;
  public final Id id;
  public final String tableName;
  
  private Table(DbUtils paramDbUtils, Class<?> paramClass)
  {
    db = paramDbUtils;
    tableName = TableUtils.getTableName(paramClass);
    id = TableUtils.getId(paramClass);
    columnMap = TableUtils.getColumnMap(paramClass);
    finderMap = new HashMap();
    paramDbUtils = columnMap.values().iterator();
    for (;;)
    {
      if (!paramDbUtils.hasNext()) {
        return;
      }
      paramClass = (Column)paramDbUtils.next();
      paramClass.setTable(this);
      if ((paramClass instanceof Finder)) {
        finderMap.put(paramClass.getColumnName(), (Finder)paramClass);
      }
    }
  }
  
  public static Table get(DbUtils paramDbUtils, Class<?> paramClass)
  {
    try
    {
      String str = paramDbUtils.getDaoConfig().getDbName() + "#" + paramClass.getName();
      Table localTable2 = (Table)tableMap.get(str);
      Table localTable1 = localTable2;
      if (localTable2 == null)
      {
        localTable1 = new Table(paramDbUtils, paramClass);
        tableMap.put(str, localTable1);
      }
      return localTable1;
    }
    finally {}
  }
  
  public static void remove(DbUtils paramDbUtils, Class<?> paramClass)
  {
    try
    {
      paramDbUtils = paramDbUtils.getDaoConfig().getDbName() + "#" + paramClass.getName();
      tableMap.remove(paramDbUtils);
      return;
    }
    finally
    {
      paramDbUtils = finally;
      throw paramDbUtils;
    }
  }
  
  /* Error */
  public static void remove(DbUtils paramDbUtils, String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 28	com/lidroid/xutils/db/table/Table:tableMap	Ljava/util/HashMap;
    //   6: invokevirtual 145	java/util/HashMap:size	()I
    //   9: ifle +43 -> 52
    //   12: aconst_null
    //   13: astore_3
    //   14: getstatic 28	com/lidroid/xutils/db/table/Table:tableMap	Ljava/util/HashMap;
    //   17: invokevirtual 149	java/util/HashMap:entrySet	()Ljava/util/Set;
    //   20: invokeinterface 152 1 0
    //   25: astore 5
    //   27: aload 5
    //   29: invokeinterface 71 1 0
    //   34: ifne +22 -> 56
    //   37: aload_3
    //   38: invokestatic 158	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   41: ifeq +11 -> 52
    //   44: getstatic 28	com/lidroid/xutils/db/table/Table:tableMap	Ljava/util/HashMap;
    //   47: aload_3
    //   48: invokevirtual 140	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   51: pop
    //   52: ldc 2
    //   54: monitorexit
    //   55: return
    //   56: aload 5
    //   58: invokeinterface 75 1 0
    //   63: checkcast 160	java/util/Map$Entry
    //   66: astore 4
    //   68: aload 4
    //   70: invokeinterface 163 1 0
    //   75: checkcast 2	com/lidroid/xutils/db/table/Table
    //   78: astore 6
    //   80: aload 6
    //   82: ifnull -55 -> 27
    //   85: aload 6
    //   87: getfield 41	com/lidroid/xutils/db/table/Table:tableName	Ljava/lang/String;
    //   90: aload_1
    //   91: invokevirtual 167	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   94: ifeq -67 -> 27
    //   97: aload 4
    //   99: invokeinterface 170 1 0
    //   104: checkcast 110	java/lang/String
    //   107: astore 4
    //   109: aload 4
    //   111: new 97	java/lang/StringBuilder
    //   114: dup
    //   115: aload_0
    //   116: invokevirtual 103	com/lidroid/xutils/DbUtils:getDaoConfig	()Lcom/lidroid/xutils/DbUtils$DaoConfig;
    //   119: invokevirtual 108	com/lidroid/xutils/DbUtils$DaoConfig:getDbName	()Ljava/lang/String;
    //   122: invokestatic 114	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   125: invokespecial 117	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   128: ldc 119
    //   130: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   136: invokevirtual 174	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   139: istore_2
    //   140: aload 4
    //   142: astore_3
    //   143: iload_2
    //   144: ifeq -117 -> 27
    //   147: aload 4
    //   149: astore_3
    //   150: goto -113 -> 37
    //   153: astore_0
    //   154: ldc 2
    //   156: monitorexit
    //   157: aload_0
    //   158: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	159	0	paramDbUtils	DbUtils
    //   0	159	1	paramString	String
    //   139	5	2	bool	boolean
    //   13	137	3	localObject1	Object
    //   66	82	4	localObject2	Object
    //   25	32	5	localIterator	Iterator
    //   78	8	6	localTable	Table
    // Exception table:
    //   from	to	target	type
    //   3	12	153	finally
    //   14	27	153	finally
    //   27	37	153	finally
    //   37	52	153	finally
    //   56	80	153	finally
    //   85	140	153	finally
  }
  
  public boolean isCheckedDatabase()
  {
    return checkedDatabase;
  }
  
  public void setCheckedDatabase(boolean paramBoolean)
  {
    checkedDatabase = paramBoolean;
  }
}
