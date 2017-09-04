package cn.domob.android.i;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import java.security.MessageDigest;

public class d
{
  private static f a = new f(d.class.getSimpleName());
  
  public d() {}
  
  /* Error */
  public static String a(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_2
    //   3: astore_0
    //   4: aload_1
    //   5: invokestatic 36	cn/domob/android/i/h:e	(Ljava/lang/String;)Z
    //   8: ifne +105 -> 113
    //   11: aload_2
    //   12: astore_0
    //   13: invokestatic 42	cn/domob/android/i/c:h	()Z
    //   16: ifeq +97 -> 113
    //   19: new 44	java/lang/StringBuilder
    //   22: dup
    //   23: invokespecial 45	java/lang/StringBuilder:<init>	()V
    //   26: invokestatic 51	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   29: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   32: aload_1
    //   33: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   39: astore_0
    //   40: new 44	java/lang/StringBuilder
    //   43: dup
    //   44: invokespecial 45	java/lang/StringBuilder:<init>	()V
    //   47: astore_3
    //   48: new 63	java/io/BufferedReader
    //   51: dup
    //   52: new 65	java/io/FileReader
    //   55: dup
    //   56: new 67	java/io/File
    //   59: dup
    //   60: aload_0
    //   61: invokespecial 68	java/io/File:<init>	(Ljava/lang/String;)V
    //   64: invokespecial 71	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   67: invokespecial 74	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   70: astore_1
    //   71: aload_1
    //   72: astore_0
    //   73: aload_1
    //   74: invokevirtual 77	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   77: astore_2
    //   78: aload_2
    //   79: ifnull +36 -> 115
    //   82: aload_1
    //   83: astore_0
    //   84: aload_3
    //   85: aload_2
    //   86: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: pop
    //   90: goto -19 -> 71
    //   93: astore_2
    //   94: aload_1
    //   95: astore_0
    //   96: aload_2
    //   97: invokevirtual 80	java/io/FileNotFoundException:printStackTrace	()V
    //   100: aload_1
    //   101: ifnull +7 -> 108
    //   104: aload_1
    //   105: invokevirtual 83	java/io/BufferedReader:close	()V
    //   108: aload_3
    //   109: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   112: astore_0
    //   113: aload_0
    //   114: areturn
    //   115: aload_1
    //   116: ifnull -8 -> 108
    //   119: aload_1
    //   120: invokevirtual 83	java/io/BufferedReader:close	()V
    //   123: goto -15 -> 108
    //   126: astore_0
    //   127: aload_0
    //   128: invokevirtual 84	java/io/IOException:printStackTrace	()V
    //   131: goto -23 -> 108
    //   134: astore_0
    //   135: aload_0
    //   136: invokevirtual 84	java/io/IOException:printStackTrace	()V
    //   139: goto -31 -> 108
    //   142: astore_2
    //   143: aconst_null
    //   144: astore_1
    //   145: aload_1
    //   146: astore_0
    //   147: aload_2
    //   148: invokevirtual 84	java/io/IOException:printStackTrace	()V
    //   151: aload_1
    //   152: ifnull -44 -> 108
    //   155: aload_1
    //   156: invokevirtual 83	java/io/BufferedReader:close	()V
    //   159: goto -51 -> 108
    //   162: astore_0
    //   163: aload_0
    //   164: invokevirtual 84	java/io/IOException:printStackTrace	()V
    //   167: goto -59 -> 108
    //   170: astore_1
    //   171: aconst_null
    //   172: astore_0
    //   173: aload_0
    //   174: ifnull +7 -> 181
    //   177: aload_0
    //   178: invokevirtual 83	java/io/BufferedReader:close	()V
    //   181: aload_1
    //   182: athrow
    //   183: astore_0
    //   184: aload_0
    //   185: invokevirtual 84	java/io/IOException:printStackTrace	()V
    //   188: goto -7 -> 181
    //   191: astore_1
    //   192: goto -19 -> 173
    //   195: astore_2
    //   196: goto -51 -> 145
    //   199: astore_2
    //   200: aconst_null
    //   201: astore_1
    //   202: goto -108 -> 94
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	205	0	paramContext	Context
    //   0	205	1	paramString	String
    //   1	85	2	str	String
    //   93	4	2	localFileNotFoundException1	java.io.FileNotFoundException
    //   142	6	2	localIOException1	java.io.IOException
    //   195	1	2	localIOException2	java.io.IOException
    //   199	1	2	localFileNotFoundException2	java.io.FileNotFoundException
    //   47	62	3	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   73	78	93	java/io/FileNotFoundException
    //   84	90	93	java/io/FileNotFoundException
    //   119	123	126	java/io/IOException
    //   104	108	134	java/io/IOException
    //   48	71	142	java/io/IOException
    //   155	159	162	java/io/IOException
    //   48	71	170	finally
    //   177	181	183	java/io/IOException
    //   73	78	191	finally
    //   84	90	191	finally
    //   96	100	191	finally
    //   147	151	191	finally
    //   73	78	195	java/io/IOException
    //   84	90	195	java/io/IOException
    //   48	71	199	java/io/FileNotFoundException
  }
  
  /* Error */
  public static String a(String paramString)
  {
    // Byte code:
    //   0: new 89	java/io/FileInputStream
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 90	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   8: astore_2
    //   9: aload_2
    //   10: astore_0
    //   11: sipush 1024
    //   14: newarray byte
    //   16: astore_3
    //   17: aload_2
    //   18: astore_0
    //   19: ldc 92
    //   21: invokestatic 98	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   24: astore 4
    //   26: aload_2
    //   27: astore_0
    //   28: aload_2
    //   29: aload_3
    //   30: invokevirtual 104	java/io/InputStream:read	([B)I
    //   33: istore_1
    //   34: iload_1
    //   35: ifle +62 -> 97
    //   38: aload_2
    //   39: astore_0
    //   40: aload 4
    //   42: aload_3
    //   43: iconst_0
    //   44: iload_1
    //   45: invokevirtual 108	java/security/MessageDigest:update	([BII)V
    //   48: goto -22 -> 26
    //   51: astore_3
    //   52: aload_2
    //   53: astore_0
    //   54: getstatic 22	cn/domob/android/i/d:a	Lcn/domob/android/i/f;
    //   57: ldc 110
    //   59: new 44	java/lang/StringBuilder
    //   62: dup
    //   63: invokespecial 45	java/lang/StringBuilder:<init>	()V
    //   66: ldc 112
    //   68: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: aload_3
    //   72: invokevirtual 115	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   75: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: invokevirtual 118	cn/domob/android/i/f:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   84: aload_2
    //   85: ifnull +7 -> 92
    //   88: aload_2
    //   89: invokevirtual 119	java/io/InputStream:close	()V
    //   92: ldc 110
    //   94: astore_3
    //   95: aload_3
    //   96: areturn
    //   97: aload_2
    //   98: astore_0
    //   99: aload 4
    //   101: invokevirtual 123	java/security/MessageDigest:digest	()[B
    //   104: ldc 110
    //   106: invokestatic 126	cn/domob/android/i/d:a	([BLjava/lang/String;)Ljava/lang/String;
    //   109: astore_3
    //   110: aload_3
    //   111: astore_0
    //   112: aload_0
    //   113: astore_3
    //   114: aload_2
    //   115: ifnull -20 -> 95
    //   118: aload_2
    //   119: invokevirtual 119	java/io/InputStream:close	()V
    //   122: aload_0
    //   123: areturn
    //   124: astore_2
    //   125: getstatic 22	cn/domob/android/i/d:a	Lcn/domob/android/i/f;
    //   128: aload_2
    //   129: invokevirtual 129	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   132: aload_0
    //   133: areturn
    //   134: astore_0
    //   135: getstatic 22	cn/domob/android/i/d:a	Lcn/domob/android/i/f;
    //   138: aload_0
    //   139: invokevirtual 129	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   142: goto -50 -> 92
    //   145: astore_2
    //   146: aconst_null
    //   147: astore_0
    //   148: aload_0
    //   149: ifnull +7 -> 156
    //   152: aload_0
    //   153: invokevirtual 119	java/io/InputStream:close	()V
    //   156: aload_2
    //   157: athrow
    //   158: astore_0
    //   159: getstatic 22	cn/domob/android/i/d:a	Lcn/domob/android/i/f;
    //   162: aload_0
    //   163: invokevirtual 129	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   166: goto -10 -> 156
    //   169: astore_2
    //   170: goto -22 -> 148
    //   173: astore_3
    //   174: aconst_null
    //   175: astore_2
    //   176: goto -124 -> 52
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	179	0	paramString	String
    //   33	12	1	i	int
    //   8	111	2	localFileInputStream	java.io.FileInputStream
    //   124	5	2	localIOException	java.io.IOException
    //   145	12	2	localObject1	Object
    //   169	1	2	localObject2	Object
    //   175	1	2	localObject3	Object
    //   16	27	3	arrayOfByte	byte[]
    //   51	21	3	localException1	Exception
    //   94	20	3	str	String
    //   173	1	3	localException2	Exception
    //   24	76	4	localMessageDigest	MessageDigest
    // Exception table:
    //   from	to	target	type
    //   11	17	51	java/lang/Exception
    //   19	26	51	java/lang/Exception
    //   28	34	51	java/lang/Exception
    //   40	48	51	java/lang/Exception
    //   99	110	51	java/lang/Exception
    //   118	122	124	java/io/IOException
    //   88	92	134	java/io/IOException
    //   0	9	145	finally
    //   152	156	158	java/io/IOException
    //   11	17	169	finally
    //   19	26	169	finally
    //   28	34	169	finally
    //   40	48	169	finally
    //   54	84	169	finally
    //   99	110	169	finally
    //   0	9	173	java/lang/Exception
  }
  
  private static String a(byte[] paramArrayOfByte, String paramString)
  {
    paramString = new StringBuilder();
    int j = paramArrayOfByte.length;
    int i = 0;
    if (i < j)
    {
      String str = Integer.toHexString(paramArrayOfByte[i] & 0xFF);
      if (str.length() == 1) {
        paramString.append("0").append(str);
      }
      for (;;)
      {
        i += 1;
        break;
        paramString.append(str);
      }
    }
    return paramString.toString();
  }
  
  /* Error */
  public static void a(String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: invokestatic 42	cn/domob/android/i/c:h	()Z
    //   5: ifeq +125 -> 130
    //   8: aload_2
    //   9: ifnull +121 -> 130
    //   12: aload_0
    //   13: invokestatic 36	cn/domob/android/i/h:e	(Ljava/lang/String;)Z
    //   16: ifne +114 -> 130
    //   19: aload_1
    //   20: invokestatic 36	cn/domob/android/i/h:e	(Ljava/lang/String;)Z
    //   23: ifne +107 -> 130
    //   26: new 44	java/lang/StringBuilder
    //   29: dup
    //   30: invokespecial 45	java/lang/StringBuilder:<init>	()V
    //   33: invokestatic 51	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   36: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   39: aload_0
    //   40: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: astore 5
    //   48: new 67	java/io/File
    //   51: dup
    //   52: aload 5
    //   54: invokespecial 68	java/io/File:<init>	(Ljava/lang/String;)V
    //   57: astore_0
    //   58: aload_0
    //   59: invokevirtual 147	java/io/File:exists	()Z
    //   62: ifne +77 -> 139
    //   65: aload_0
    //   66: invokevirtual 150	java/io/File:mkdir	()Z
    //   69: istore 4
    //   71: iload 4
    //   73: istore_3
    //   74: iload_3
    //   75: ifeq +55 -> 130
    //   78: aconst_null
    //   79: astore_0
    //   80: new 152	java/io/BufferedWriter
    //   83: dup
    //   84: new 154	java/io/FileWriter
    //   87: dup
    //   88: new 44	java/lang/StringBuilder
    //   91: dup
    //   92: invokespecial 45	java/lang/StringBuilder:<init>	()V
    //   95: aload 5
    //   97: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: aload_1
    //   101: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   107: iconst_0
    //   108: invokespecial 157	java/io/FileWriter:<init>	(Ljava/lang/String;Z)V
    //   111: invokespecial 160	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   114: astore_1
    //   115: aload_1
    //   116: astore_0
    //   117: aload_1
    //   118: aload_2
    //   119: invokevirtual 163	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   122: aload_1
    //   123: ifnull +7 -> 130
    //   126: aload_1
    //   127: invokevirtual 164	java/io/BufferedWriter:close	()V
    //   130: return
    //   131: astore_0
    //   132: aload_0
    //   133: invokevirtual 165	java/lang/Exception:printStackTrace	()V
    //   136: goto -62 -> 74
    //   139: iconst_1
    //   140: istore_3
    //   141: goto -67 -> 74
    //   144: astore_0
    //   145: aload_0
    //   146: invokevirtual 84	java/io/IOException:printStackTrace	()V
    //   149: return
    //   150: astore_2
    //   151: aconst_null
    //   152: astore_1
    //   153: aload_1
    //   154: astore_0
    //   155: aload_2
    //   156: invokevirtual 84	java/io/IOException:printStackTrace	()V
    //   159: aload_1
    //   160: ifnull -30 -> 130
    //   163: aload_1
    //   164: invokevirtual 164	java/io/BufferedWriter:close	()V
    //   167: return
    //   168: astore_0
    //   169: aload_0
    //   170: invokevirtual 84	java/io/IOException:printStackTrace	()V
    //   173: return
    //   174: astore_2
    //   175: aload_0
    //   176: astore_1
    //   177: aload_2
    //   178: astore_0
    //   179: aload_1
    //   180: ifnull +7 -> 187
    //   183: aload_1
    //   184: invokevirtual 164	java/io/BufferedWriter:close	()V
    //   187: aload_0
    //   188: athrow
    //   189: astore_1
    //   190: aload_1
    //   191: invokevirtual 84	java/io/IOException:printStackTrace	()V
    //   194: goto -7 -> 187
    //   197: astore_2
    //   198: aload_0
    //   199: astore_1
    //   200: aload_2
    //   201: astore_0
    //   202: goto -23 -> 179
    //   205: astore_2
    //   206: goto -53 -> 153
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	209	0	paramString1	String
    //   0	209	1	paramString2	String
    //   0	209	2	paramString3	String
    //   1	140	3	i	int
    //   69	3	4	bool	boolean
    //   46	50	5	str	String
    // Exception table:
    //   from	to	target	type
    //   65	71	131	java/lang/Exception
    //   126	130	144	java/io/IOException
    //   80	115	150	java/io/IOException
    //   163	167	168	java/io/IOException
    //   80	115	174	finally
    //   183	187	189	java/io/IOException
    //   117	122	197	finally
    //   155	159	197	finally
    //   117	122	205	java/io/IOException
  }
  
  public static Drawable b(Context paramContext, String paramString)
  {
    try
    {
      paramContext = new BitmapDrawable(BitmapFactory.decodeStream(h.class.getClassLoader().getResourceAsStream("assets/" + paramString)));
      return paramContext;
    }
    catch (Exception paramContext)
    {
      a.a(paramContext);
      a.e("Failed to load source file:" + paramString);
    }
    return null;
  }
  
  public static String b(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return "";
    }
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.reset();
      localMessageDigest.update(paramString.getBytes("UTF-8"));
      paramString = a(localMessageDigest.digest(), "");
      return paramString;
    }
    catch (Exception paramString)
    {
      a.a(paramString);
    }
    return "";
  }
}
