public final class kk
{
  private static kl jdField_a_of_type_Kl;
  private static short jdField_a_of_type_Short = 0;
  private String jdField_a_of_type_JavaLangString;
  private boolean jdField_a_of_type_Boolean;
  private short b;
  
  private kk(short paramShort, String paramString)
  {
    b = paramShort;
    jdField_a_of_type_JavaLangString = paramString;
    if ((jdField_a_of_type_Kl != null) && (jdField_a_of_type_Kl.a(jdField_a_of_type_JavaLangString))) {}
    for (boolean bool = true;; bool = false)
    {
      jdField_a_of_type_Boolean = bool;
      return;
    }
  }
  
  /* Error */
  public static kk a(String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 25	kk:jdField_a_of_type_Kl	Lkl;
    //   6: ifnonnull +27 -> 33
    //   9: ldc 37
    //   11: invokestatic 41	at:b	(Ljava/lang/String;)Z
    //   14: istore_1
    //   15: iload_1
    //   16: ifeq +17 -> 33
    //   19: ldc 43
    //   21: invokestatic 49	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   24: invokevirtual 53	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   27: checkcast 27	kl
    //   30: putstatic 25	kk:jdField_a_of_type_Kl	Lkl;
    //   33: new 2	kk
    //   36: dup
    //   37: getstatic 14	kk:jdField_a_of_type_Short	S
    //   40: aload_0
    //   41: invokespecial 55	kk:<init>	(SLjava/lang/String;)V
    //   44: astore_0
    //   45: getstatic 14	kk:jdField_a_of_type_Short	S
    //   48: iconst_1
    //   49: iadd
    //   50: i2s
    //   51: putstatic 14	kk:jdField_a_of_type_Short	S
    //   54: ldc 2
    //   56: monitorexit
    //   57: aload_0
    //   58: areturn
    //   59: astore_0
    //   60: ldc 2
    //   62: monitorexit
    //   63: aload_0
    //   64: athrow
    //   65: astore_2
    //   66: goto -33 -> 33
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	69	0	paramString	String
    //   14	2	1	bool	boolean
    //   65	1	2	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   3	15	59	finally
    //   19	33	59	finally
    //   33	54	59	finally
    //   19	33	65	java/lang/Exception
  }
  
  public final void a(int paramInt)
  {
    if (jdField_a_of_type_Boolean) {
      jdField_a_of_type_Kl.a(new kn(b, paramInt, null, null));
    }
  }
  
  public final void a(int paramInt, Object[] paramArrayOfObject)
  {
    if (jdField_a_of_type_Boolean) {
      jdField_a_of_type_Kl.a(new kn(b, paramInt, null, paramArrayOfObject));
    }
  }
  
  public final void a(int paramInt, Object[] paramArrayOfObject, Throwable paramThrowable)
  {
    if (jdField_a_of_type_Boolean) {
      jdField_a_of_type_Kl.a(new kn(b, paramInt, paramThrowable, paramArrayOfObject));
    }
  }
  
  public final boolean a()
  {
    return jdField_a_of_type_Boolean;
  }
}
