package cn.domob.android.ads;

import android.content.Context;
import cn.domob.android.ads.a.e;
import cn.domob.android.f.g;
import cn.domob.android.f.h;
import cn.domob.android.i.f;

public class B
  extends e
{
  private static f d = new f(B.class.getSimpleName());
  private static final String f = "domobBridge";
  private a e;
  private String g = null;
  private String h = null;
  private g i;
  
  protected B(Context paramContext, String paramString, int paramInt, a paramA)
  {
    super(paramContext, paramString, paramInt);
    e = paramA;
  }
  
  /* Error */
  private String a(byte[] paramArrayOfByte, String paramString)
  {
    // Byte code:
    //   0: new 61	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 63	java/lang/StringBuilder:<init>	()V
    //   7: aload_0
    //   8: invokevirtual 67	cn/domob/android/ads/B:getContext	()Landroid/content/Context;
    //   11: invokevirtual 73	android/content/Context:getFilesDir	()Ljava/io/File;
    //   14: invokevirtual 78	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   17: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: getstatic 85	java/io/File:separator	Ljava/lang/String;
    //   23: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: aload_2
    //   27: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   33: astore_2
    //   34: new 75	java/io/File
    //   37: dup
    //   38: aload_2
    //   39: invokespecial 89	java/io/File:<init>	(Ljava/lang/String;)V
    //   42: astore_3
    //   43: new 91	java/io/FileOutputStream
    //   46: dup
    //   47: aload_3
    //   48: invokespecial 94	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   51: astore_3
    //   52: aload_3
    //   53: aload_1
    //   54: invokevirtual 98	java/io/FileOutputStream:write	([B)V
    //   57: aload_3
    //   58: invokevirtual 101	java/io/FileOutputStream:close	()V
    //   61: aload_2
    //   62: areturn
    //   63: astore_1
    //   64: aconst_null
    //   65: areturn
    //   66: astore_1
    //   67: getstatic 39	cn/domob/android/ads/B:d	Lcn/domob/android/i/f;
    //   70: aload_1
    //   71: invokevirtual 104	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   74: aload_2
    //   75: areturn
    //   76: astore_1
    //   77: getstatic 39	cn/domob/android/ads/B:d	Lcn/domob/android/i/f;
    //   80: aload_1
    //   81: invokevirtual 104	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   84: aload_3
    //   85: invokevirtual 101	java/io/FileOutputStream:close	()V
    //   88: aconst_null
    //   89: areturn
    //   90: astore_1
    //   91: getstatic 39	cn/domob/android/ads/B:d	Lcn/domob/android/i/f;
    //   94: aload_1
    //   95: invokevirtual 104	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   98: goto -10 -> 88
    //   101: astore_1
    //   102: aload_3
    //   103: invokevirtual 101	java/io/FileOutputStream:close	()V
    //   106: aload_1
    //   107: athrow
    //   108: astore_2
    //   109: getstatic 39	cn/domob/android/ads/B:d	Lcn/domob/android/i/f;
    //   112: aload_2
    //   113: invokevirtual 104	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   116: goto -10 -> 106
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	119	0	this	B
    //   0	119	1	paramArrayOfByte	byte[]
    //   0	119	2	paramString	String
    //   42	61	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   43	52	63	java/io/FileNotFoundException
    //   57	61	66	java/io/IOException
    //   52	57	76	java/io/IOException
    //   84	88	90	java/io/IOException
    //   52	57	101	finally
    //   77	84	101	finally
    //   102	106	108	java/io/IOException
  }
  
  public String a(String paramString, String[] paramArrayOfString)
  {
    return super.a(a(getContext(), paramString), new String[] { "domob.js" });
  }
  
  protected void a(String paramString1, String paramString2, int paramInt)
  {
    loadDataWithBaseURL(paramString1, paramString2, "text/html", "UTF-8", null);
    if (e != null) {
      e.a(this);
    }
  }
  
  protected void a(String paramString1, String paramString2, String paramString3)
  {
    for (;;)
    {
      try
      {
        c localC = new c();
        if ((paramString3 != null) && (!localC.a(getContext(), paramString3, paramString2)))
        {
          d.a(String.format("There is no pair in DB: %s : %s", new Object[] { paramString3, paramString2 }));
          localC.c(getContext(), paramString2, paramString3);
        }
        if (localC.c(getContext(), paramString2))
        {
          paramString3 = localC.d(getContext(), paramString2);
          if (paramString3 != null)
          {
            d.b(String.format("Get image %s local location = %s from DB.", new Object[] { paramString2, paramString3 }));
            a(String.format("%s.assetReady('%s', '%s')", new Object[] { "domobBridge", paramString2, paramString3 }));
            invalidate();
            if (e == null) {
              break;
            }
            e.a();
            return;
          }
          d.a(String.format("Alias %s is in DB but the local location is not available. Need to download.", new Object[] { paramString2 }));
          d.a(String.format("Alias %s is about to be downloaded.", new Object[] { paramString2 }));
          i = new g()
          {
            public void a(final h paramAnonymousH)
            {
              if (paramAnonymousH.d() != 200) {
                return;
              }
              final byte[] arrayOfByte = paramAnonymousH.a();
              paramAnonymousH = paramAnonymousH.c();
              B.c().b("Download finish:" + paramAnonymousH);
              new Thread(new Runnable()
              {
                public void run()
                {
                  if ((arrayOfByte == null) || (arrayOfByte.length == 0))
                  {
                    B.c().e("the HTTP Status-Code is 200, but has received byte array is empty");
                    if ((B.a(B.this) != null) && (B.b(B.this) != null)) {
                      B.a(B.this).a(B.b(B.this).toString());
                    }
                  }
                  for (;;)
                  {
                    return;
                    String str = B.a(B.this, arrayOfByte, B.c(B.this));
                    if (str != null)
                    {
                      B.c().b("Image saved:" + str);
                      try
                      {
                        new c().b(getContext(), paramAnonymousH, str);
                        a(String.format("%s.assetReady('%s', '%s')", new Object[] { "domobBridge", paramAnonymousH, str }));
                        if (B.a(B.this) != null)
                        {
                          B.a(B.this).a();
                          return;
                        }
                      }
                      catch (Exception localException)
                      {
                        for (;;)
                        {
                          B.c().a(localException);
                        }
                      }
                    }
                  }
                  B.c().e("Error in saving image.");
                }
              }).start();
            }
          };
          g = paramString1;
          h = paramString2;
          cn.domob.android.f.c.a().a(getContext(), paramString1, i, h);
          return;
        }
      }
      catch (Exception paramString1)
      {
        d.a(paramString1);
        return;
      }
      d.b(String.format("Alias %s is not in DB. Download and insert.", new Object[] { paramString2 }));
    }
  }
  
  static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(e paramE);
    
    public abstract void a(String paramString);
  }
}
