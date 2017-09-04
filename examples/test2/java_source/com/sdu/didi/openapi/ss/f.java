package com.sdu.didi.openapi.ss;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import com.sdu.didi.openapi.utils.b;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;
import org.json.JSONException;

public class f
{
  private static f a;
  private Context b;
  private final byte[] c;
  
  private f(Context paramContext)
  {
    b = paramContext;
    c = new byte[1];
  }
  
  public static f a(Context paramContext)
  {
    try
    {
      if (a == null) {
        a = new f(paramContext);
      }
      paramContext = a;
      return paramContext;
    }
    finally {}
  }
  
  private FileOutputStream a()
    throws FileNotFoundException
  {
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(c(), false);
      return localFileOutputStream;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
  
  private FileInputStream b()
    throws FileNotFoundException
  {
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(c());
      return localFileInputStream;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
  
  private File c()
    throws IOException
  {
    if (Environment.getExternalStorageState().equals("mounted"))
    {
      File localFile = new File(Environment.getExternalStorageDirectory().getPath() + "/sysdata/config/" + b.getPackageName());
      if (!localFile.exists()) {
        localFile.mkdirs();
      }
      localFile = new File(localFile, "sys.cfg");
      if (!localFile.exists()) {
        localFile.createNewFile();
      }
      return localFile;
    }
    return null;
  }
  
  public String a(String paramString)
    throws IOException, JSONException
  {
    Object localObject;
    FileInputStream localFileInputStream;
    synchronized (c)
    {
      localObject = b.a(b, paramString, "");
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        return localObject;
      }
      localFileInputStream = null;
      localObject = localFileInputStream;
    }
    try
    {
      Properties localProperties = new Properties();
      localObject = localFileInputStream;
      localFileInputStream = b();
      if (localFileInputStream == null)
      {
        if (localFileInputStream != null) {
          localFileInputStream.close();
        }
        return "";
        paramString = finally;
        throw paramString;
      }
      localObject = localFileInputStream;
      localProperties.load(localFileInputStream);
      localObject = localFileInputStream;
      localProperties.getProperty(paramString, "");
      if (localFileInputStream != null) {
        localFileInputStream.close();
      }
      return "";
    }
    finally
    {
      if (localObject != null) {
        ((FileInputStream)localObject).close();
      }
    }
    return "";
  }
  
  /* Error */
  public void a(String paramString1, String paramString2)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore_3
    //   5: aload_0
    //   6: getfield 19	com/sdu/didi/openapi/ss/f:c	[B
    //   9: astore 6
    //   11: aload 6
    //   13: monitorenter
    //   14: aload_0
    //   15: getfield 17	com/sdu/didi/openapi/ss/f:b	Landroid/content/Context;
    //   18: aload_1
    //   19: aload_2
    //   20: invokestatic 141	com/sdu/didi/openapi/utils/b:b	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   23: new 123	java/util/Properties
    //   26: dup
    //   27: invokespecial 124	java/util/Properties:<init>	()V
    //   30: astore 7
    //   32: aload_0
    //   33: invokespecial 126	com/sdu/didi/openapi/ss/f:b	()Ljava/io/FileInputStream;
    //   36: astore 4
    //   38: aload 4
    //   40: ifnonnull +29 -> 69
    //   43: iconst_0
    //   44: ifeq +11 -> 55
    //   47: new 143	java/lang/NullPointerException
    //   50: dup
    //   51: invokespecial 144	java/lang/NullPointerException:<init>	()V
    //   54: athrow
    //   55: aload 4
    //   57: ifnull +8 -> 65
    //   60: aload 4
    //   62: invokevirtual 129	java/io/FileInputStream:close	()V
    //   65: aload 6
    //   67: monitorexit
    //   68: return
    //   69: aload 5
    //   71: astore_3
    //   72: aload 7
    //   74: aload 4
    //   76: invokevirtual 133	java/util/Properties:load	(Ljava/io/InputStream;)V
    //   79: aload 5
    //   81: astore_3
    //   82: aload 7
    //   84: aload_1
    //   85: invokevirtual 147	java/util/Properties:containsKey	(Ljava/lang/Object;)Z
    //   88: ifeq +13 -> 101
    //   91: aload 5
    //   93: astore_3
    //   94: aload 7
    //   96: aload_1
    //   97: invokevirtual 151	java/util/Properties:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   100: pop
    //   101: aload 5
    //   103: astore_3
    //   104: aload 7
    //   106: aload_1
    //   107: aload_2
    //   108: invokevirtual 155	java/util/Properties:setProperty	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    //   111: pop
    //   112: aload 5
    //   114: astore_3
    //   115: aload_0
    //   116: invokespecial 157	com/sdu/didi/openapi/ss/f:a	()Ljava/io/FileOutputStream;
    //   119: astore_1
    //   120: aload_1
    //   121: ifnonnull +31 -> 152
    //   124: aload_1
    //   125: ifnull +7 -> 132
    //   128: aload_1
    //   129: invokevirtual 158	java/io/FileOutputStream:close	()V
    //   132: aload 4
    //   134: ifnull +8 -> 142
    //   137: aload 4
    //   139: invokevirtual 129	java/io/FileInputStream:close	()V
    //   142: aload 6
    //   144: monitorexit
    //   145: return
    //   146: astore_1
    //   147: aload 6
    //   149: monitorexit
    //   150: aload_1
    //   151: athrow
    //   152: aload_1
    //   153: astore_3
    //   154: aload 7
    //   156: aload_1
    //   157: ldc 110
    //   159: invokevirtual 162	java/util/Properties:store	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   162: aload_1
    //   163: ifnull +7 -> 170
    //   166: aload_1
    //   167: invokevirtual 158	java/io/FileOutputStream:close	()V
    //   170: aload 4
    //   172: ifnull +8 -> 180
    //   175: aload 4
    //   177: invokevirtual 129	java/io/FileInputStream:close	()V
    //   180: aload 6
    //   182: monitorexit
    //   183: return
    //   184: aload_3
    //   185: ifnull +7 -> 192
    //   188: aload_3
    //   189: invokevirtual 158	java/io/FileOutputStream:close	()V
    //   192: aload 4
    //   194: ifnull +8 -> 202
    //   197: aload 4
    //   199: invokevirtual 129	java/io/FileInputStream:close	()V
    //   202: aload_1
    //   203: athrow
    //   204: astore_1
    //   205: goto -21 -> 184
    //   208: astore_1
    //   209: aconst_null
    //   210: astore 4
    //   212: goto -28 -> 184
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	215	0	this	f
    //   0	215	1	paramString1	String
    //   0	215	2	paramString2	String
    //   4	185	3	localObject1	Object
    //   36	175	4	localFileInputStream	FileInputStream
    //   1	112	5	localObject2	Object
    //   9	172	6	arrayOfByte	byte[]
    //   30	125	7	localProperties	Properties
    // Exception table:
    //   from	to	target	type
    //   14	23	146	finally
    //   47	55	146	finally
    //   60	65	146	finally
    //   65	68	146	finally
    //   128	132	146	finally
    //   137	142	146	finally
    //   142	145	146	finally
    //   147	150	146	finally
    //   166	170	146	finally
    //   175	180	146	finally
    //   180	183	146	finally
    //   188	192	146	finally
    //   197	202	146	finally
    //   202	204	146	finally
    //   72	79	204	finally
    //   82	91	204	finally
    //   94	101	204	finally
    //   104	112	204	finally
    //   115	120	204	finally
    //   154	162	204	finally
    //   23	38	208	finally
  }
}
