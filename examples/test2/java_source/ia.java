import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;

final class ia
  extends fw
{
  private byte[] a;
  
  ia(byte[] paramArrayOfByte)
    throws IOException
  {
    jdField_a_of_type_ArrayOfByte = paramArrayOfByte;
  }
  
  private void a()
  {
    hz localHz = new hz(jdField_a_of_type_ArrayOfByte);
    while (localHz.hasMoreElements()) {
      jdField_a_of_type_JavaUtilVector.addElement(localHz.nextElement());
    }
    jdField_a_of_type_ArrayOfByte = null;
  }
  
  final int a()
    throws IOException
  {
    if (jdField_a_of_type_ArrayOfByte != null) {
      return id.a(jdField_a_of_type_ArrayOfByte.length) + 1 + jdField_a_of_type_ArrayOfByte.length;
    }
    return super.d().a();
  }
  
  /* Error */
  public final Enumeration a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 15	ia:jdField_a_of_type_ArrayOfByte	[B
    //   6: ifnonnull +12 -> 18
    //   9: aload_0
    //   10: invokespecial 57	fw:a	()Ljava/util/Enumeration;
    //   13: astore_1
    //   14: aload_0
    //   15: monitorexit
    //   16: aload_1
    //   17: areturn
    //   18: new 19	hz
    //   21: dup
    //   22: aload_0
    //   23: getfield 15	ia:jdField_a_of_type_ArrayOfByte	[B
    //   26: invokespecial 21	hz:<init>	([B)V
    //   29: astore_1
    //   30: goto -16 -> 14
    //   33: astore_1
    //   34: aload_0
    //   35: monitorexit
    //   36: aload_1
    //   37: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	38	0	this	ia
    //   13	17	1	localObject1	Object
    //   33	4	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	14	33	finally
    //   18	30	33	finally
  }
  
  final void a(fs paramFs)
    throws IOException
  {
    if (jdField_a_of_type_ArrayOfByte != null)
    {
      paramFs.a(48, jdField_a_of_type_ArrayOfByte);
      return;
    }
    super.d().a(paramFs);
  }
  
  public final int b()
  {
    try
    {
      if (jdField_a_of_type_ArrayOfByte != null) {
        a();
      }
      int i = super.b();
      return i;
    }
    finally {}
  }
  
  final fv c()
  {
    if (jdField_a_of_type_ArrayOfByte != null) {
      a();
    }
    return super.c();
  }
  
  final fv d()
  {
    if (jdField_a_of_type_ArrayOfByte != null) {
      a();
    }
    return super.d();
  }
}
