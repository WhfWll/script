package org.webrtc.videoengine;

import android.hardware.Camera.CameraInfo;

public class VideoCaptureDeviceInfoAndroid
{
  private static final String TAG = "anLive";
  
  public VideoCaptureDeviceInfoAndroid() {}
  
  private static String deviceUniqueName(int paramInt, Camera.CameraInfo paramCameraInfo)
  {
    StringBuilder localStringBuilder = new StringBuilder("Camera ").append(paramInt).append(", Facing ");
    if (isFrontFacing(paramCameraInfo)) {}
    for (String str = "front";; str = "back") {
      return str + ", Orientation " + orientation;
    }
  }
  
  /* Error */
  private static String getDeviceInfo()
  {
    // Byte code:
    //   0: new 58	org/json/JSONArray
    //   3: dup
    //   4: invokespecial 59	org/json/JSONArray:<init>	()V
    //   7: astore 7
    //   9: iconst_0
    //   10: istore_1
    //   11: iload_1
    //   12: invokestatic 65	android/hardware/Camera:getNumberOfCameras	()I
    //   15: if_icmpge +564 -> 579
    //   18: new 41	android/hardware/Camera$CameraInfo
    //   21: dup
    //   22: invokespecial 66	android/hardware/Camera$CameraInfo:<init>	()V
    //   25: astore 9
    //   27: iload_1
    //   28: aload 9
    //   30: invokestatic 70	android/hardware/Camera:getCameraInfo	(ILandroid/hardware/Camera$CameraInfo;)V
    //   33: iload_1
    //   34: aload 9
    //   36: invokestatic 72	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid:deviceUniqueName	(ILandroid/hardware/Camera$CameraInfo;)Ljava/lang/String;
    //   39: astore 8
    //   41: new 74	org/json/JSONObject
    //   44: dup
    //   45: invokespecial 75	org/json/JSONObject:<init>	()V
    //   48: astore 10
    //   50: aload 7
    //   52: aload 10
    //   54: invokevirtual 79	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   57: pop
    //   58: aconst_null
    //   59: astore 5
    //   61: aconst_null
    //   62: astore 4
    //   64: iload_1
    //   65: invokestatic 83	android/hardware/Camera:open	(I)Landroid/hardware/Camera;
    //   68: astore 6
    //   70: aload 6
    //   72: astore 4
    //   74: aload 6
    //   76: astore 5
    //   78: aload 6
    //   80: invokevirtual 87	android/hardware/Camera:getParameters	()Landroid/hardware/Camera$Parameters;
    //   83: astore 11
    //   85: aload 6
    //   87: astore 4
    //   89: aload 6
    //   91: astore 5
    //   93: aload 11
    //   95: invokevirtual 93	android/hardware/Camera$Parameters:getSupportedPreviewSizes	()Ljava/util/List;
    //   98: astore 12
    //   100: aload 6
    //   102: astore 4
    //   104: aload 6
    //   106: astore 5
    //   108: aload 11
    //   110: invokevirtual 96	android/hardware/Camera$Parameters:getSupportedPreviewFpsRange	()Ljava/util/List;
    //   113: astore 11
    //   115: aload 6
    //   117: astore 4
    //   119: aload 6
    //   121: astore 5
    //   123: ldc 8
    //   125: aload 8
    //   127: invokestatic 102	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   130: pop
    //   131: aload 6
    //   133: ifnull +8 -> 141
    //   136: aload 6
    //   138: invokevirtual 105	android/hardware/Camera:release	()V
    //   141: new 58	org/json/JSONArray
    //   144: dup
    //   145: invokespecial 59	org/json/JSONArray:<init>	()V
    //   148: astore 4
    //   150: aload 12
    //   152: invokeinterface 111 1 0
    //   157: astore 5
    //   159: aload 5
    //   161: invokeinterface 117 1 0
    //   166: ifeq +137 -> 303
    //   169: aload 5
    //   171: invokeinterface 121 1 0
    //   176: checkcast 123	android/hardware/Camera$Size
    //   179: astore 6
    //   181: new 74	org/json/JSONObject
    //   184: dup
    //   185: invokespecial 75	org/json/JSONObject:<init>	()V
    //   188: astore 12
    //   190: aload 12
    //   192: ldc 125
    //   194: aload 6
    //   196: getfield 127	android/hardware/Camera$Size:width	I
    //   199: invokevirtual 130	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   202: pop
    //   203: aload 12
    //   205: ldc -124
    //   207: aload 6
    //   209: getfield 134	android/hardware/Camera$Size:height	I
    //   212: invokevirtual 130	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   215: pop
    //   216: aload 4
    //   218: aload 12
    //   220: invokevirtual 79	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   223: pop
    //   224: goto -65 -> 159
    //   227: astore 4
    //   229: new 56	java/lang/RuntimeException
    //   232: dup
    //   233: aload 4
    //   235: invokespecial 137	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   238: athrow
    //   239: astore 6
    //   241: aload 4
    //   243: astore 5
    //   245: ldc 8
    //   247: new 17	java/lang/StringBuilder
    //   250: dup
    //   251: ldc -117
    //   253: invokespecial 22	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   256: aload 8
    //   258: invokevirtual 31	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   261: ldc -115
    //   263: invokevirtual 31	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   266: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   269: aload 6
    //   271: invokestatic 145	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   274: pop
    //   275: aload 4
    //   277: ifnull +324 -> 601
    //   280: aload 4
    //   282: invokevirtual 105	android/hardware/Camera:release	()V
    //   285: goto +316 -> 601
    //   288: astore 4
    //   290: aload 5
    //   292: ifnull +8 -> 300
    //   295: aload 5
    //   297: invokevirtual 105	android/hardware/Camera:release	()V
    //   300: aload 4
    //   302: athrow
    //   303: aload 11
    //   305: invokeinterface 111 1 0
    //   310: astore 5
    //   312: iconst_0
    //   313: istore_0
    //   314: iconst_0
    //   315: istore_3
    //   316: aload 5
    //   318: invokeinterface 117 1 0
    //   323: ifeq +44 -> 367
    //   326: aload 5
    //   328: invokeinterface 121 1 0
    //   333: checkcast 147	[I
    //   336: astore 6
    //   338: iload_3
    //   339: istore_2
    //   340: aload 6
    //   342: iconst_0
    //   343: iaload
    //   344: sipush 30000
    //   347: if_icmpne +261 -> 608
    //   350: iload_3
    //   351: istore_2
    //   352: aload 6
    //   354: iconst_1
    //   355: iaload
    //   356: sipush 30000
    //   359: if_icmpne +249 -> 608
    //   362: iconst_1
    //   363: istore_2
    //   364: goto +244 -> 608
    //   367: iload_3
    //   368: ifeq +77 -> 445
    //   371: iload_0
    //   372: ifne +73 -> 445
    //   375: ldc 8
    //   377: ldc -107
    //   379: invokestatic 102	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   382: pop
    //   383: iconst_2
    //   384: newarray int
    //   386: astore 5
    //   388: aload 5
    //   390: iconst_0
    //   391: sipush 15000
    //   394: iastore
    //   395: aload 5
    //   397: iconst_1
    //   398: sipush 15000
    //   401: iastore
    //   402: iconst_0
    //   403: istore_0
    //   404: iload_0
    //   405: aload 11
    //   407: invokeinterface 152 1 0
    //   412: if_icmpge +33 -> 445
    //   415: aload 11
    //   417: iload_0
    //   418: invokeinterface 156 2 0
    //   423: checkcast 147	[I
    //   426: iconst_1
    //   427: iaload
    //   428: aload 5
    //   430: iconst_1
    //   431: iaload
    //   432: if_icmple +203 -> 635
    //   435: aload 11
    //   437: iload_0
    //   438: aload 5
    //   440: invokeinterface 160 3 0
    //   445: new 58	org/json/JSONArray
    //   448: dup
    //   449: invokespecial 59	org/json/JSONArray:<init>	()V
    //   452: astore 5
    //   454: aload 11
    //   456: invokeinterface 111 1 0
    //   461: astore 6
    //   463: aload 6
    //   465: invokeinterface 117 1 0
    //   470: ifeq +59 -> 529
    //   473: aload 6
    //   475: invokeinterface 121 1 0
    //   480: checkcast 147	[I
    //   483: astore 11
    //   485: new 74	org/json/JSONObject
    //   488: dup
    //   489: invokespecial 75	org/json/JSONObject:<init>	()V
    //   492: astore 12
    //   494: aload 12
    //   496: ldc -94
    //   498: aload 11
    //   500: iconst_0
    //   501: iaload
    //   502: invokevirtual 130	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   505: pop
    //   506: aload 12
    //   508: ldc -92
    //   510: aload 11
    //   512: iconst_1
    //   513: iaload
    //   514: invokevirtual 130	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   517: pop
    //   518: aload 5
    //   520: aload 12
    //   522: invokevirtual 79	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   525: pop
    //   526: goto -63 -> 463
    //   529: aload 10
    //   531: ldc -90
    //   533: aload 8
    //   535: invokevirtual 169	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   538: pop
    //   539: aload 10
    //   541: ldc -85
    //   543: aload 9
    //   545: invokestatic 35	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid:isFrontFacing	(Landroid/hardware/Camera$CameraInfo;)Z
    //   548: invokevirtual 174	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   551: ldc -81
    //   553: aload 9
    //   555: getfield 45	android/hardware/Camera$CameraInfo:orientation	I
    //   558: invokevirtual 130	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   561: ldc -79
    //   563: aload 4
    //   565: invokevirtual 169	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   568: ldc -77
    //   570: aload 5
    //   572: invokevirtual 169	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   575: pop
    //   576: goto +25 -> 601
    //   579: aload 7
    //   581: iconst_2
    //   582: invokevirtual 182	org/json/JSONArray:toString	(I)Ljava/lang/String;
    //   585: astore 4
    //   587: ldc 8
    //   589: aload 4
    //   591: invokestatic 102	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   594: pop
    //   595: aload 4
    //   597: areturn
    //   598: goto +32 -> 630
    //   601: iload_1
    //   602: iconst_1
    //   603: iadd
    //   604: istore_1
    //   605: goto -594 -> 11
    //   608: aload 6
    //   610: iconst_0
    //   611: iaload
    //   612: sipush 15000
    //   615: if_icmpne -17 -> 598
    //   618: aload 6
    //   620: iconst_1
    //   621: iaload
    //   622: sipush 15000
    //   625: if_icmpne -27 -> 598
    //   628: iconst_1
    //   629: istore_0
    //   630: iload_2
    //   631: istore_3
    //   632: goto -316 -> 316
    //   635: iload_0
    //   636: iconst_1
    //   637: iadd
    //   638: istore_0
    //   639: goto -235 -> 404
    // Local variable table:
    //   start	length	slot	name	signature
    //   313	326	0	i	int
    //   10	595	1	j	int
    //   339	292	2	k	int
    //   315	317	3	m	int
    //   62	155	4	localObject1	Object
    //   227	54	4	localJSONException	org.json.JSONException
    //   288	276	4	localObject2	Object
    //   585	11	4	str1	String
    //   59	512	5	localObject3	Object
    //   68	140	6	localObject4	Object
    //   239	31	6	localRuntimeException	RuntimeException
    //   336	283	6	localObject5	Object
    //   7	573	7	localJSONArray	org.json.JSONArray
    //   39	495	8	str2	String
    //   25	529	9	localCameraInfo	Camera.CameraInfo
    //   48	492	10	localJSONObject	org.json.JSONObject
    //   83	428	11	localObject6	Object
    //   98	423	12	localObject7	Object
    // Exception table:
    //   from	to	target	type
    //   0	9	227	org/json/JSONException
    //   11	58	227	org/json/JSONException
    //   136	141	227	org/json/JSONException
    //   141	159	227	org/json/JSONException
    //   159	224	227	org/json/JSONException
    //   280	285	227	org/json/JSONException
    //   295	300	227	org/json/JSONException
    //   300	303	227	org/json/JSONException
    //   303	312	227	org/json/JSONException
    //   316	338	227	org/json/JSONException
    //   375	388	227	org/json/JSONException
    //   404	445	227	org/json/JSONException
    //   445	463	227	org/json/JSONException
    //   463	526	227	org/json/JSONException
    //   529	576	227	org/json/JSONException
    //   579	595	227	org/json/JSONException
    //   64	70	239	java/lang/RuntimeException
    //   78	85	239	java/lang/RuntimeException
    //   93	100	239	java/lang/RuntimeException
    //   108	115	239	java/lang/RuntimeException
    //   123	131	239	java/lang/RuntimeException
    //   64	70	288	finally
    //   78	85	288	finally
    //   93	100	288	finally
    //   108	115	288	finally
    //   123	131	288	finally
    //   245	275	288	finally
  }
  
  private static boolean isFrontFacing(Camera.CameraInfo paramCameraInfo)
  {
    return facing == 1;
  }
}
