package com.lidroid.xutils.cache;

import java.util.concurrent.ConcurrentHashMap;

public class KeyExpiryMap<K, V>
  extends ConcurrentHashMap<K, Long>
{
  private static final int DEFAULT_CONCURRENCY_LEVEL = 16;
  private static final long serialVersionUID = 1L;
  
  public KeyExpiryMap() {}
  
  public KeyExpiryMap(int paramInt)
  {
    super(paramInt);
  }
  
  public KeyExpiryMap(int paramInt, float paramFloat)
  {
    super(paramInt, paramFloat, 16);
  }
  
  public KeyExpiryMap(int paramInt1, float paramFloat, int paramInt2)
  {
    super(paramInt1, paramFloat, paramInt2);
  }
  
  public void clear()
  {
    try
    {
      super.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  /* Error */
  public boolean containsKey(Object paramObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iconst_0
    //   3: istore_2
    //   4: aload_0
    //   5: aload_1
    //   6: invokespecial 33	java/util/concurrent/ConcurrentHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   9: checkcast 35	java/lang/Long
    //   12: astore 7
    //   14: aload 7
    //   16: ifnull +27 -> 43
    //   19: invokestatic 41	java/lang/System:currentTimeMillis	()J
    //   22: lstore_3
    //   23: aload 7
    //   25: invokevirtual 44	java/lang/Long:longValue	()J
    //   28: lstore 5
    //   30: lload_3
    //   31: lload 5
    //   33: lcmp
    //   34: ifge +9 -> 43
    //   37: iconst_1
    //   38: istore_2
    //   39: aload_0
    //   40: monitorexit
    //   41: iload_2
    //   42: ireturn
    //   43: aload_0
    //   44: aload_1
    //   45: invokevirtual 48	com/lidroid/xutils/cache/KeyExpiryMap:remove	(Ljava/lang/Object;)Ljava/lang/Long;
    //   48: pop
    //   49: goto -10 -> 39
    //   52: astore_1
    //   53: aload_0
    //   54: monitorexit
    //   55: aload_1
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	KeyExpiryMap
    //   0	57	1	paramObject	Object
    //   3	39	2	bool	boolean
    //   22	9	3	l1	long
    //   28	4	5	l2	long
    //   12	12	7	localLong	Long
    // Exception table:
    //   from	to	target	type
    //   4	14	52	finally
    //   19	30	52	finally
    //   43	49	52	finally
  }
  
  /* Error */
  public Long get(Object paramObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: invokevirtual 50	com/lidroid/xutils/cache/KeyExpiryMap:containsKey	(Ljava/lang/Object;)Z
    //   7: ifeq +16 -> 23
    //   10: aload_0
    //   11: aload_1
    //   12: invokespecial 33	java/util/concurrent/ConcurrentHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   15: checkcast 35	java/lang/Long
    //   18: astore_1
    //   19: aload_0
    //   20: monitorexit
    //   21: aload_1
    //   22: areturn
    //   23: aconst_null
    //   24: astore_1
    //   25: goto -6 -> 19
    //   28: astore_1
    //   29: aload_0
    //   30: monitorexit
    //   31: aload_1
    //   32: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	33	0	this	KeyExpiryMap
    //   0	33	1	paramObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	19	28	finally
  }
  
  public Long put(K paramK, Long paramLong)
  {
    try
    {
      if (containsKey(paramK)) {
        remove(paramK);
      }
      paramK = (Long)super.put(paramK, paramLong);
      return paramK;
    }
    finally {}
  }
  
  public Long remove(Object paramObject)
  {
    try
    {
      paramObject = (Long)super.remove(paramObject);
      return paramObject;
    }
    finally
    {
      paramObject = finally;
      throw paramObject;
    }
  }
}
