package ss.ss.ss;

import gK.e;
import gK.f;
import gK.g;
import gK.h;
import gK.w;
import gK.x;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class u
  implements ae
{
  private static final Logger a = Logger.getLogger(b.class.getName());
  private static final h b = h.a("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
  
  public u() {}
  
  private static int b(int paramInt, byte paramByte, short paramShort)
    throws IOException
  {
    short s = paramInt;
    if ((paramByte & 0x8) != 0) {
      s = paramInt - 1;
    }
    if (paramShort > s) {
      throw d("PROTOCOL_ERROR padding %s > remaining length %s", new Object[] { Short.valueOf(paramShort), Integer.valueOf(s) });
    }
    return (short)(s - paramShort);
  }
  
  private static int b(g paramG)
    throws IOException
  {
    return (paramG.h() & 0xFF) << 16 | (paramG.h() & 0xFF) << 8 | paramG.h() & 0xFF;
  }
  
  private static void b(f paramF, int paramInt)
    throws IOException
  {
    paramF.h(paramInt >>> 16 & 0xFF);
    paramF.h(paramInt >>> 8 & 0xFF);
    paramF.h(paramInt & 0xFF);
  }
  
  private static IllegalArgumentException c(String paramString, Object... paramVarArgs)
  {
    throw new IllegalArgumentException(String.format(paramString, paramVarArgs));
  }
  
  private static IOException d(String paramString, Object... paramVarArgs)
    throws IOException
  {
    throw new IOException(String.format(paramString, paramVarArgs));
  }
  
  public b a(g paramG, boolean paramBoolean)
  {
    return new c(paramG, 4096, paramBoolean);
  }
  
  public c a(f paramF, boolean paramBoolean)
  {
    return new d(paramF, paramBoolean);
  }
  
  static final class a
    implements w
  {
    int a;
    byte b;
    int c;
    int d;
    short e;
    private final g f;
    
    public a(g paramG)
    {
      f = paramG;
    }
    
    private void b()
      throws IOException
    {
      int i = c;
      int j = u.a(f);
      d = j;
      a = j;
      byte b1 = (byte)(f.h() & 0xFF);
      b = ((byte)(f.h() & 0xFF));
      if (u.b().isLoggable(Level.FINE)) {
        u.b().fine(u.b.a(true, c, a, b1, b));
      }
      c = (f.j() & 0x7FFFFFFF);
      if (b1 != 9) {
        throw u.a("%s != TYPE_CONTINUATION", new Object[] { Byte.valueOf(b1) });
      }
      if (c != i) {
        throw u.a("TYPE_CONTINUATION streamId changed", new Object[0]);
      }
    }
    
    public long a(e paramE, long paramLong)
      throws IOException
    {
      if (d == 0)
      {
        f.g(e);
        e = 0;
        if ((b & 0x4) == 0) {}
      }
      do
      {
        return -1L;
        b();
        break;
        paramLong = f.a(paramE, Math.min(paramLong, d));
      } while (paramLong == -1L);
      d = ((int)(d - paramLong));
      return paramLong;
    }
    
    public x a()
    {
      return f.a();
    }
    
    public void close()
      throws IOException
    {}
  }
  
  static final class b
  {
    private static final String[] a;
    private static final String[] b;
    private static final String[] c;
    
    static
    {
      int k = 0;
      a = new String[] { "DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION" };
      b = new String[64];
      c = new String['Ā'];
      int i = 0;
      while (i < c.length)
      {
        c[i] = String.format("%8s", new Object[] { Integer.toBinaryString(i) }).replace(' ', '0');
        i += 1;
      }
      b[0] = "";
      b[1] = "END_STREAM";
      int[] arrayOfInt1 = new int[1];
      arrayOfInt1[0] = 1;
      b[8] = "PADDED";
      int j = arrayOfInt1.length;
      i = 0;
      while (i < j)
      {
        m = arrayOfInt1[i];
        b[(m | 0x8)] = (b[m] + "|PADDED");
        i += 1;
      }
      b[4] = "END_HEADERS";
      b[32] = "PRIORITY";
      b[36] = "END_HEADERS|PRIORITY";
      int[] arrayOfInt2 = new int[3];
      int[] tmp242_240 = arrayOfInt2;
      tmp242_240[0] = 4;
      int[] tmp246_242 = tmp242_240;
      tmp246_242[1] = 32;
      int[] tmp251_246 = tmp246_242;
      tmp251_246[2] = 36;
      tmp251_246;
      int m = arrayOfInt2.length;
      i = 0;
      for (;;)
      {
        j = k;
        if (i >= m) {
          break;
        }
        int n = arrayOfInt2[i];
        int i1 = arrayOfInt1.length;
        j = 0;
        while (j < i1)
        {
          int i2 = arrayOfInt1[j];
          b[(i2 | n)] = (b[i2] + '|' + b[n]);
          b[(i2 | n | 0x8)] = (b[i2] + '|' + b[n] + "|PADDED");
          j += 1;
        }
        i += 1;
      }
      while (j < b.length)
      {
        if (b[j] == null) {
          b[j] = c[j];
        }
        j += 1;
      }
    }
    
    b() {}
    
    static String a(byte paramByte1, byte paramByte2)
    {
      Object localObject;
      if (paramByte2 == 0) {
        localObject = "";
      }
      String str;
      do
      {
        do
        {
          return localObject;
          switch (paramByte1)
          {
          case 5: 
          default: 
            if (paramByte2 >= b.length) {
              break;
            }
          }
          for (str = b[paramByte2]; (paramByte1 == 5) && ((paramByte2 & 0x4) != 0); str = c[paramByte2])
          {
            return str.replace("HEADERS", "PUSH_PROMISE");
            if (paramByte2 == 1) {
              return "ACK";
            }
            return c[paramByte2];
            return c[paramByte2];
          }
          localObject = str;
        } while (paramByte1 != 0);
        localObject = str;
      } while ((paramByte2 & 0x20) == 0);
      return str.replace("PRIORITY", "COMPRESSED");
    }
    
    static String a(boolean paramBoolean, int paramInt1, int paramInt2, byte paramByte1, byte paramByte2)
    {
      String str1;
      String str3;
      if (paramByte1 < a.length)
      {
        str1 = a[paramByte1];
        str3 = a(paramByte1, paramByte2);
        if (!paramBoolean) {
          break label91;
        }
      }
      label91:
      for (String str2 = "<<";; str2 = ">>")
      {
        return String.format("%s 0x%08x %5d %-13s %s", new Object[] { str2, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), str1, str3 });
        str1 = String.format("0x%02x", new Object[] { Byte.valueOf(paramByte1) });
        break;
      }
    }
  }
  
  static final class c
    implements b
  {
    final t.a a;
    private final g b;
    private final u.a c;
    private final boolean d;
    
    c(g paramG, int paramInt, boolean paramBoolean)
    {
      b = paramG;
      d = paramBoolean;
      c = new u.a(b);
      a = new t.a(paramInt, c);
    }
    
    private List<r> a(int paramInt1, short paramShort, byte paramByte, int paramInt2)
      throws IOException
    {
      u.a localA = c;
      c.d = paramInt1;
      a = paramInt1;
      c.e = paramShort;
      c.b = paramByte;
      c.c = paramInt2;
      a.a();
      return a.b();
    }
    
    private void a(b.a paramA, int paramInt)
      throws IOException
    {
      int i = b.j();
      if ((0x80000000 & i) != 0) {}
      for (boolean bool = true;; bool = false)
      {
        paramA.a(paramInt, i & 0x7FFFFFFF, (b.h() & 0xFF) + 1, bool);
        return;
      }
    }
    
    private void a(b.a paramA, int paramInt1, byte paramByte, int paramInt2)
      throws IOException
    {
      if (paramInt2 == 0) {
        throw u.a("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
      }
      boolean bool;
      if ((paramByte & 0x1) != 0)
      {
        bool = true;
        if ((paramByte & 0x8) == 0) {
          break label108;
        }
      }
      label108:
      for (short s = (short)(b.h() & 0xFF);; s = 0)
      {
        int i = paramInt1;
        if ((paramByte & 0x20) != 0)
        {
          a(paramA, paramInt2);
          i = paramInt1 - 5;
        }
        paramA.a(false, bool, paramInt2, -1, a(u.a(i, paramByte, s), s, paramByte, paramInt2), s.d);
        return;
        bool = false;
        break;
      }
    }
    
    private void b(b.a paramA, int paramInt1, byte paramByte, int paramInt2)
      throws IOException
    {
      int i = 1;
      short s = 0;
      boolean bool;
      if ((paramByte & 0x1) != 0)
      {
        bool = true;
        if ((paramByte & 0x20) == 0) {
          break label43;
        }
      }
      for (;;)
      {
        if (i == 0) {
          break label49;
        }
        throw u.a("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
        bool = false;
        break;
        label43:
        i = 0;
      }
      label49:
      if ((paramByte & 0x8) != 0) {
        s = (short)(b.h() & 0xFF);
      }
      paramInt1 = u.a(paramInt1, paramByte, s);
      paramA.a(bool, paramInt2, b, paramInt1);
      b.g(s);
    }
    
    private void c(b.a paramA, int paramInt1, byte paramByte, int paramInt2)
      throws IOException
    {
      if (paramInt1 != 5) {
        throw u.a("TYPE_PRIORITY length: %d != 5", new Object[] { Integer.valueOf(paramInt1) });
      }
      if (paramInt2 == 0) {
        throw u.a("TYPE_PRIORITY streamId == 0", new Object[0]);
      }
      a(paramA, paramInt2);
    }
    
    private void d(b.a paramA, int paramInt1, byte paramByte, int paramInt2)
      throws IOException
    {
      if (paramInt1 != 4) {
        throw u.a("TYPE_RST_STREAM length: %d != 4", new Object[] { Integer.valueOf(paramInt1) });
      }
      if (paramInt2 == 0) {
        throw u.a("TYPE_RST_STREAM streamId == 0", new Object[0]);
      }
      paramInt1 = b.j();
      a localA = a.b(paramInt1);
      if (localA == null) {
        throw u.a("TYPE_RST_STREAM unexpected error code: %d", new Object[] { Integer.valueOf(paramInt1) });
      }
      paramA.a(paramInt2, localA);
    }
    
    private void e(b.a paramA, int paramInt1, byte paramByte, int paramInt2)
      throws IOException
    {
      if (paramInt2 != 0) {
        throw u.a("TYPE_SETTINGS streamId != 0", new Object[0]);
      }
      if ((paramByte & 0x1) != 0)
      {
        if (paramInt1 != 0) {
          throw u.a("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
        }
        paramA.b();
      }
      ac localAc;
      label239:
      do
      {
        return;
        if (paramInt1 % 6 != 0) {
          throw u.a("TYPE_SETTINGS length %% 6 != 0: %s", new Object[] { Integer.valueOf(paramInt1) });
        }
        localAc = new ac();
        paramInt2 = 0;
        if (paramInt2 < paramInt1)
        {
          byte b1 = b.i();
          int i = b.j();
          paramByte = b1;
          switch (b1)
          {
          default: 
            paramByte = b1;
          }
          do
          {
            do
            {
              for (;;)
              {
                localAc.a(paramByte, 0, i);
                paramInt2 += 6;
                break;
                paramByte = b1;
                if (i != 0)
                {
                  paramByte = b1;
                  if (i != 1)
                  {
                    throw u.a("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                    paramByte = 4;
                  }
                }
              }
              paramByte = 7;
            } while (i >= 0);
            throw u.a("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
            if (i < 16384) {
              break label239;
            }
            paramByte = b1;
          } while (i <= 16777215);
          throw u.a("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", new Object[] { Integer.valueOf(i) });
        }
        paramA.a(false, localAc);
      } while (localAc.c() < 0);
      a.a(localAc.c());
    }
    
    private void f(b.a paramA, int paramInt1, byte paramByte, int paramInt2)
      throws IOException
    {
      short s = 0;
      if (paramInt2 == 0) {
        throw u.a("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
      }
      if ((paramByte & 0x8) != 0) {
        s = (short)(b.h() & 0xFF);
      }
      paramA.a(paramInt2, b.j() & 0x7FFFFFFF, a(u.a(paramInt1 - 4, paramByte, s), s, paramByte, paramInt2));
    }
    
    private void g(b.a paramA, int paramInt1, byte paramByte, int paramInt2)
      throws IOException
    {
      boolean bool = true;
      if (paramInt1 != 8) {
        throw u.a("TYPE_PING length != 8: %s", new Object[] { Integer.valueOf(paramInt1) });
      }
      if (paramInt2 != 0) {
        throw u.a("TYPE_PING streamId != 0", new Object[0]);
      }
      paramInt1 = b.j();
      paramInt2 = b.j();
      if ((paramByte & 0x1) != 0) {}
      for (;;)
      {
        paramA.a(bool, paramInt1, paramInt2);
        return;
        bool = false;
      }
    }
    
    private void h(b.a paramA, int paramInt1, byte paramByte, int paramInt2)
      throws IOException
    {
      if (paramInt1 < 8) {
        throw u.a("TYPE_GOAWAY length < 8: %s", new Object[] { Integer.valueOf(paramInt1) });
      }
      if (paramInt2 != 0) {
        throw u.a("TYPE_GOAWAY streamId != 0", new Object[0]);
      }
      paramByte = b.j();
      paramInt2 = b.j();
      paramInt1 -= 8;
      a localA = a.b(paramInt2);
      if (localA == null) {
        throw u.a("TYPE_GOAWAY unexpected error code: %d", new Object[] { Integer.valueOf(paramInt2) });
      }
      h localH = h.b;
      if (paramInt1 > 0) {
        localH = b.c(paramInt1);
      }
      paramA.a(paramByte, localA, localH);
    }
    
    private void i(b.a paramA, int paramInt1, byte paramByte, int paramInt2)
      throws IOException
    {
      if (paramInt1 != 4) {
        throw u.a("TYPE_WINDOW_UPDATE length !=4: %s", new Object[] { Integer.valueOf(paramInt1) });
      }
      long l = b.j() & 0x7FFFFFFF;
      if (l == 0L) {
        throw u.a("windowSizeIncrement was 0", new Object[] { Long.valueOf(l) });
      }
      paramA.a(paramInt2, l);
    }
    
    public void a()
      throws IOException
    {
      if (d) {}
      h localH;
      do
      {
        return;
        localH = b.c(u.a().f());
        if (u.b().isLoggable(Level.FINE)) {
          u.b().fine(String.format("<< CONNECTION %s", new Object[] { localH.d() }));
        }
      } while (u.a().equals(localH));
      throw u.a("Expected a connection header but was %s", new Object[] { localH.a() });
    }
    
    public boolean a(b.a paramA)
      throws IOException
    {
      int i;
      try
      {
        b.a(9L);
        i = u.a(b);
        if ((i < 0) || (i > 16384)) {
          throw u.a("FRAME_SIZE_ERROR: %s", new Object[] { Integer.valueOf(i) });
        }
      }
      catch (IOException paramA)
      {
        return false;
      }
      byte b1 = (byte)(b.h() & 0xFF);
      byte b2 = (byte)(b.h() & 0xFF);
      int j = b.j() & 0x7FFFFFFF;
      if (u.b().isLoggable(Level.FINE)) {
        u.b().fine(u.b.a(true, j, i, b1, b2));
      }
      switch (b1)
      {
      default: 
        b.g(i);
        return true;
      case 0: 
        b(paramA, i, b2, j);
        return true;
      case 1: 
        a(paramA, i, b2, j);
        return true;
      case 2: 
        c(paramA, i, b2, j);
        return true;
      case 3: 
        d(paramA, i, b2, j);
        return true;
      case 4: 
        e(paramA, i, b2, j);
        return true;
      case 5: 
        f(paramA, i, b2, j);
        return true;
      case 6: 
        g(paramA, i, b2, j);
        return true;
      case 7: 
        h(paramA, i, b2, j);
        return true;
      }
      i(paramA, i, b2, j);
      return true;
    }
    
    public void close()
      throws IOException
    {
      b.close();
    }
  }
  
  static final class d
    implements c
  {
    private final f a;
    private final boolean b;
    private final e c;
    private final t.b d;
    private int e;
    private boolean f;
    
    d(f paramF, boolean paramBoolean)
    {
      a = paramF;
      b = paramBoolean;
      c = new e();
      d = new t.b(c);
      e = 16384;
    }
    
    private void b(int paramInt, long paramLong)
      throws IOException
    {
      if (paramLong > 0L)
      {
        int i = (int)Math.min(e, paramLong);
        paramLong -= i;
        if (paramLong == 0L) {}
        for (byte b1 = 4;; b1 = 0)
        {
          a(paramInt, i, (byte)9, b1);
          a.a_(c, i);
          break;
        }
      }
    }
    
    public void a()
      throws IOException
    {
      try
      {
        if (f) {
          throw new IOException("closed");
        }
      }
      finally {}
      boolean bool = b;
      if (!bool) {}
      for (;;)
      {
        return;
        if (u.b().isLoggable(Level.FINE)) {
          u.b().fine(String.format(">> CONNECTION %s", new Object[] { u.a().d() }));
        }
        a.c(u.a().g());
        a.flush();
      }
    }
    
    void a(int paramInt1, byte paramByte, e paramE, int paramInt2)
      throws IOException
    {
      a(paramInt1, paramInt2, (byte)0, paramByte);
      if (paramInt2 > 0) {
        a.a_(paramE, paramInt2);
      }
    }
    
    void a(int paramInt1, int paramInt2, byte paramByte1, byte paramByte2)
      throws IOException
    {
      if (u.b().isLoggable(Level.FINE)) {
        u.b().fine(u.b.a(false, paramInt1, paramInt2, paramByte1, paramByte2));
      }
      if (paramInt2 > e) {
        throw u.b("FRAME_SIZE_ERROR length > %d: %d", new Object[] { Integer.valueOf(e), Integer.valueOf(paramInt2) });
      }
      if ((0x80000000 & paramInt1) != 0) {
        throw u.b("reserved bit set: %s", new Object[] { Integer.valueOf(paramInt1) });
      }
      u.a(a, paramInt2);
      a.h(paramByte1 & 0xFF);
      a.h(paramByte2 & 0xFF);
      a.f(0x7FFFFFFF & paramInt1);
    }
    
    public void a(int paramInt1, int paramInt2, List<r> paramList)
      throws IOException
    {
      try
      {
        if (f) {
          throw new IOException("closed");
        }
      }
      finally {}
      d.a(paramList);
      long l = c.b();
      int i = (int)Math.min(e - 4, l);
      if (l == i) {}
      for (byte b1 = 4;; b1 = 0)
      {
        a(paramInt1, i + 4, (byte)5, b1);
        a.f(0x7FFFFFFF & paramInt2);
        a.a_(c, i);
        if (l > i) {
          b(paramInt1, l - i);
        }
        return;
      }
    }
    
    public void a(int paramInt, long paramLong)
      throws IOException
    {
      try
      {
        if (f) {
          throw new IOException("closed");
        }
      }
      finally {}
      if ((paramLong == 0L) || (paramLong > 2147483647L)) {
        throw u.b("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", new Object[] { Long.valueOf(paramLong) });
      }
      a(paramInt, 4, (byte)8, (byte)0);
      a.f((int)paramLong);
      a.flush();
    }
    
    public void a(int paramInt, a paramA)
      throws IOException
    {
      try
      {
        if (f) {
          throw new IOException("closed");
        }
      }
      finally {}
      if (s == -1) {
        throw new IllegalArgumentException();
      }
      a(paramInt, 4, (byte)3, (byte)0);
      a.f(s);
      a.flush();
    }
    
    public void a(int paramInt, a paramA, byte[] paramArrayOfByte)
      throws IOException
    {
      try
      {
        if (f) {
          throw new IOException("closed");
        }
      }
      finally {}
      if (s == -1) {
        throw u.b("errorCode.httpCode == -1", new Object[0]);
      }
      a(0, paramArrayOfByte.length + 8, (byte)7, (byte)0);
      a.f(paramInt);
      a.f(s);
      if (paramArrayOfByte.length > 0) {
        a.c(paramArrayOfByte);
      }
      a.flush();
    }
    
    public void a(ac paramAc)
      throws IOException
    {
      try
      {
        if (f) {
          throw new IOException("closed");
        }
      }
      finally {}
      e = paramAc.e(e);
      a(0, 0, (byte)4, (byte)1);
      a.flush();
    }
    
    public void a(boolean paramBoolean, int paramInt1, int paramInt2)
      throws IOException
    {
      byte b1 = 0;
      try
      {
        if (f) {
          throw new IOException("closed");
        }
      }
      finally {}
      if (paramBoolean) {
        b1 = 1;
      }
      a(0, 8, (byte)6, b1);
      a.f(paramInt1);
      a.f(paramInt2);
      a.flush();
    }
    
    public void a(boolean paramBoolean, int paramInt1, e paramE, int paramInt2)
      throws IOException
    {
      try
      {
        if (f) {
          throw new IOException("closed");
        }
      }
      finally {}
      byte b1 = 0;
      if (paramBoolean) {
        b1 = (byte)1;
      }
      a(paramInt1, b1, paramE, paramInt2);
    }
    
    void a(boolean paramBoolean, int paramInt, List<r> paramList)
      throws IOException
    {
      if (f) {
        throw new IOException("closed");
      }
      d.a(paramList);
      long l = c.b();
      int i = (int)Math.min(e, l);
      if (l == i) {}
      for (byte b1 = 4;; b1 = 0)
      {
        byte b2 = b1;
        if (paramBoolean) {
          b2 = (byte)(b1 | 0x1);
        }
        a(paramInt, i, (byte)1, b2);
        a.a_(c, i);
        if (l > i) {
          b(paramInt, l - i);
        }
        return;
      }
    }
    
    public void a(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, List<r> paramList)
      throws IOException
    {
      if (paramBoolean2) {
        try
        {
          throw new UnsupportedOperationException();
        }
        finally {}
      }
      if (f) {
        throw new IOException("closed");
      }
      a(paramBoolean1, paramInt1, paramList);
    }
    
    public void b()
      throws IOException
    {
      try
      {
        if (f) {
          throw new IOException("closed");
        }
      }
      finally {}
      a.flush();
    }
    
    public void b(ac paramAc)
      throws IOException
    {
      int i = 0;
      try
      {
        if (f) {
          throw new IOException("closed");
        }
      }
      finally {}
      a(0, paramAc.b() * 6, (byte)4, (byte)0);
      if (i < 10) {
        if (paramAc.a(i)) {
          break label110;
        }
      }
      for (;;)
      {
        label57:
        a.g(j);
        a.f(paramAc.b(i));
        break label103;
        a.flush();
        return;
        label103:
        label110:
        do
        {
          j = i;
          break label57;
          i += 1;
          break;
          if (i == 4)
          {
            j = 3;
            break label57;
          }
        } while (i != 7);
        int j = 4;
      }
    }
    
    public int c()
    {
      return e;
    }
    
    public void close()
      throws IOException
    {
      try
      {
        f = true;
        a.close();
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
  }
}
