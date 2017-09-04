package com.sdu.didi.openapi;

import android.content.Context;
import android.text.TextUtils;

public class l
{
  private static l a;
  
  private l() {}
  
  protected static l a()
  {
    try
    {
      if (a == null) {
        a = new l();
      }
      l localL = a;
      return localL;
    }
    finally {}
  }
  
  protected String a(Context paramContext)
  {
    try
    {
      String str2 = com.sdu.didi.openapi.utils.b.a(paramContext, "sdk_id", "");
      String str1 = str2;
      if (TextUtils.isEmpty(str2))
      {
        str1 = DIOpenSDK.a().getSDKId(DIOpenSDK.getAppId(paramContext));
        com.sdu.didi.openapi.utils.b.b(paramContext, "sdk_id", str1);
      }
      return str1;
    }
    finally {}
  }
  
  /* Error */
  protected com.sdu.didi.openapi.gK.b b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 52	java/util/HashMap
    //   5: dup
    //   6: invokespecial 53	java/util/HashMap:<init>	()V
    //   9: astore 4
    //   11: new 55	com/sdu/didi/openapi/gK/b
    //   14: dup
    //   15: invokespecial 56	com/sdu/didi/openapi/gK/b:<init>	()V
    //   18: astore_3
    //   19: aload_1
    //   20: ldc 58
    //   22: ldc 20
    //   24: invokestatic 25	com/sdu/didi/openapi/utils/b:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   27: astore 5
    //   29: aload 5
    //   31: invokestatic 31	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   34: ifne +9 -> 43
    //   37: aload_3
    //   38: aload 5
    //   40: invokevirtual 61	com/sdu/didi/openapi/gK/b:a	(Ljava/lang/String;)V
    //   43: aload_3
    //   44: invokevirtual 65	com/sdu/didi/openapi/gK/b:c	()Z
    //   47: istore_2
    //   48: iload_2
    //   49: ifeq +7 -> 56
    //   52: aload_0
    //   53: monitorexit
    //   54: aload_3
    //   55: areturn
    //   56: aload 4
    //   58: ldc 67
    //   60: aload_1
    //   61: invokestatic 39	com/sdu/didi/openapi/DIOpenSDK:getAppId	(Landroid/content/Context;)Ljava/lang/String;
    //   64: invokevirtual 71	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   67: pop
    //   68: aload 4
    //   70: ldc 73
    //   72: invokestatic 75	com/sdu/didi/openapi/l:a	()Lcom/sdu/didi/openapi/l;
    //   75: aload_1
    //   76: invokevirtual 77	com/sdu/didi/openapi/l:a	(Landroid/content/Context;)Ljava/lang/String;
    //   79: invokevirtual 71	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   82: pop
    //   83: new 79	org/json/JSONObject
    //   86: dup
    //   87: invokespecial 80	org/json/JSONObject:<init>	()V
    //   90: astore 5
    //   92: aload 5
    //   94: ldc 82
    //   96: aload_1
    //   97: invokestatic 85	com/sdu/didi/openapi/utils/Utils:a	(Landroid/content/Context;)Ljava/lang/String;
    //   100: invokevirtual 88	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   103: pop
    //   104: aload 5
    //   106: ldc 90
    //   108: aload_1
    //   109: invokestatic 92	com/sdu/didi/openapi/utils/Utils:b	(Landroid/content/Context;)Ljava/lang/String;
    //   112: invokevirtual 88	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   115: pop
    //   116: aload 5
    //   118: ldc 73
    //   120: invokestatic 75	com/sdu/didi/openapi/l:a	()Lcom/sdu/didi/openapi/l;
    //   123: aload_1
    //   124: invokevirtual 77	com/sdu/didi/openapi/l:a	(Landroid/content/Context;)Ljava/lang/String;
    //   127: invokevirtual 88	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   130: pop
    //   131: aload 5
    //   133: invokevirtual 96	org/json/JSONObject:toString	()Ljava/lang/String;
    //   136: astore 5
    //   138: aload 4
    //   140: ldc 98
    //   142: aload 5
    //   144: invokevirtual 71	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   147: pop
    //   148: invokestatic 101	com/sdu/didi/openapi/utils/Utils:getTimestamp	()Ljava/lang/String;
    //   151: astore 6
    //   153: aload 4
    //   155: ldc 103
    //   157: aload 6
    //   159: invokevirtual 71	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   162: pop
    //   163: bipush 10
    //   165: invokestatic 107	com/sdu/didi/openapi/utils/Utils:getRandomString	(I)Ljava/lang/String;
    //   168: astore 7
    //   170: aload 4
    //   172: ldc 109
    //   174: aload 7
    //   176: invokevirtual 71	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   179: pop
    //   180: aload 4
    //   182: ldc 111
    //   184: invokestatic 113	com/sdu/didi/openapi/utils/Utils:a	()Ljava/lang/String;
    //   187: invokevirtual 71	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   190: pop
    //   191: aload 4
    //   193: ldc 115
    //   195: invokestatic 36	com/sdu/didi/openapi/DIOpenSDK:a	()Lcom/sdu/didi/openapi/DIOpenSDK;
    //   198: new 117	java/lang/StringBuilder
    //   201: dup
    //   202: invokespecial 118	java/lang/StringBuilder:<init>	()V
    //   205: aload_1
    //   206: invokestatic 39	com/sdu/didi/openapi/DIOpenSDK:getAppId	(Landroid/content/Context;)Ljava/lang/String;
    //   209: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: aload_1
    //   213: invokestatic 125	com/sdu/didi/openapi/DIOpenSDK:getSecrectStr	(Landroid/content/Context;)Ljava/lang/String;
    //   216: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   219: invokestatic 75	com/sdu/didi/openapi/l:a	()Lcom/sdu/didi/openapi/l;
    //   222: aload_1
    //   223: invokevirtual 77	com/sdu/didi/openapi/l:a	(Landroid/content/Context;)Ljava/lang/String;
    //   226: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   229: aload 5
    //   231: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: aload 6
    //   236: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   239: aload 7
    //   241: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   244: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   247: invokevirtual 129	com/sdu/didi/openapi/DIOpenSDK:getSDKSign	(Ljava/lang/String;)Ljava/lang/String;
    //   250: invokevirtual 71	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   253: pop
    //   254: invokestatic 134	com/sdu/didi/openapi/ss/a:a	()Lcom/sdu/didi/openapi/ss/a;
    //   257: ldc -120
    //   259: aload 4
    //   261: invokevirtual 139	com/sdu/didi/openapi/ss/a:b	(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    //   264: astore 4
    //   266: aload 4
    //   268: invokestatic 31	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   271: ifne -219 -> 52
    //   274: aload_3
    //   275: aload 4
    //   277: invokevirtual 61	com/sdu/didi/openapi/gK/b:a	(Ljava/lang/String;)V
    //   280: aload_3
    //   281: invokevirtual 65	com/sdu/didi/openapi/gK/b:c	()Z
    //   284: ifeq -232 -> 52
    //   287: aload_1
    //   288: ldc 58
    //   290: aload 4
    //   292: invokestatic 47	com/sdu/didi/openapi/utils/b:b	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   295: goto -243 -> 52
    //   298: astore_1
    //   299: aload_0
    //   300: monitorexit
    //   301: aload_1
    //   302: athrow
    //   303: astore 6
    //   305: aload 6
    //   307: invokevirtual 142	org/json/JSONException:printStackTrace	()V
    //   310: goto -179 -> 131
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	313	0	this	l
    //   0	313	1	paramContext	Context
    //   47	2	2	bool	boolean
    //   18	263	3	localB	com.sdu.didi.openapi.gK.b
    //   9	282	4	localObject1	Object
    //   27	203	5	localObject2	Object
    //   151	84	6	str1	String
    //   303	3	6	localJSONException	org.json.JSONException
    //   168	72	7	str2	String
    // Exception table:
    //   from	to	target	type
    //   2	43	298	finally
    //   43	48	298	finally
    //   56	92	298	finally
    //   92	131	298	finally
    //   131	295	298	finally
    //   305	310	298	finally
    //   92	131	303	org/json/JSONException
  }
  
  protected com.sdu.didi.openapi.gK.b c(Context paramContext)
  {
    com.sdu.didi.openapi.gK.b localB = new com.sdu.didi.openapi.gK.b();
    localB.a(com.sdu.didi.openapi.utils.b.a(paramContext, "openid_json", ""));
    return localB;
  }
}
