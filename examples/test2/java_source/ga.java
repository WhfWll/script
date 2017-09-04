import java.io.IOException;
import java.io.InputStream;
import java.util.Vector;

public final class ga
{
  private final int jdField_a_of_type_Int;
  private final InputStream jdField_a_of_type_JavaIoInputStream;
  private final byte[][] jdField_a_of_type_Array2dOfByte;
  
  public ga(InputStream paramInputStream)
  {
    this(paramInputStream, id.a(paramInputStream));
  }
  
  public ga(InputStream paramInputStream, int paramInt)
  {
    jdField_a_of_type_JavaIoInputStream = paramInputStream;
    jdField_a_of_type_Int = paramInt;
    jdField_a_of_type_Array2dOfByte = new byte[11][];
  }
  
  public final fg a()
    throws IOException
  {
    int i = jdField_a_of_type_JavaIoInputStream.read();
    if (i == -1) {
      return null;
    }
    if ((jdField_a_of_type_JavaIoInputStream instanceof hy)) {
      ((hy)jdField_a_of_type_JavaIoInputStream).a(false);
    }
    int j = fl.a(jdField_a_of_type_JavaIoInputStream, i);
    if ((i & 0x20) != 0) {}
    int k;
    for (boolean bool = true;; bool = false)
    {
      k = fl.b(jdField_a_of_type_JavaIoInputStream, jdField_a_of_type_Int);
      if (k >= 0) {
        break label267;
      }
      if (bool) {
        break;
      }
      throw new IOException("indefinite length primitive encoding encountered");
    }
    Object localObject = new ga(new hy(jdField_a_of_type_JavaIoInputStream, jdField_a_of_type_Int), jdField_a_of_type_Int);
    if ((i & 0x40) != 0) {
      return new fd(j, (ga)localObject);
    }
    if ((i & 0x80) != 0) {
      return new gn(true, j, (ga)localObject);
    }
    switch (j)
    {
    default: 
      throw new fj("unknown BER object encountered: 0x" + Integer.toHexString(j));
    case 8: 
      return new gv((ga)localObject);
    case 4: 
      return new gh((ga)localObject);
    case 16: 
      return new gj((ga)localObject);
    }
    return new gl((ga)localObject);
    label267:
    localObject = new hw(jdField_a_of_type_JavaIoInputStream, k);
    if ((i & 0x40) != 0) {
      return new gp(bool, j, ((hw)localObject).a());
    }
    if ((i & 0x80) != 0) {
      return new gn(bool, j, new ga((InputStream)localObject));
    }
    if (bool)
    {
      switch (j)
      {
      default: 
        throw new IOException("unknown tag " + j + " encountered");
      case 4: 
        return new gh(new ga((InputStream)localObject));
      case 16: 
        return new hj(new ga((InputStream)localObject));
      case 17: 
        return new hl(new ga((InputStream)localObject));
      }
      return new gv(new ga((InputStream)localObject));
    }
    switch (j)
    {
    }
    try
    {
      localObject = fl.a(j, (hw)localObject, jdField_a_of_type_Array2dOfByte);
      return localObject;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw new fj("corrupted stream detected", localIllegalArgumentException);
    }
    return new hf((hw)localObject);
  }
  
  final fh a()
    throws IOException
  {
    fh localFh = new fh();
    for (;;)
    {
      fg localFg = a();
      if (localFg == null) {
        break;
      }
      if ((localFg instanceof hx)) {
        localFh.a(((hx)localFg).a());
      } else {
        localFh.a(localFg.b());
      }
    }
    return localFh;
  }
  
  final fv a(boolean paramBoolean, int paramInt)
    throws IOException
  {
    if (!paramBoolean) {
      return new hn(false, paramInt, new he(((hw)jdField_a_of_type_JavaIoInputStream).a()));
    }
    fh localFh = a();
    if ((jdField_a_of_type_JavaIoInputStream instanceof hy))
    {
      if (a.size() == 1) {
        return new gm(true, paramInt, localFh.a(0));
      }
      return new gm(false, paramInt, ge.a(localFh));
    }
    if (a.size() == 1) {
      return new hn(true, paramInt, localFh.a(0));
    }
    return new hn(false, paramInt, gw.a(localFh));
  }
}
