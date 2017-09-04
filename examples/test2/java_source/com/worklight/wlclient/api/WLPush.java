package com.worklight.wlclient.api;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.bangcle.andjni.JniLib;
import com.worklight.androidgap.push.WLGCMIntentService.Message;
import com.worklight.common.WLConfig;
import com.worklight.wlclient.WLRequestListener;
import java.util.ArrayList;
import java.util.HashMap;
import org.apache.http.protocol.HttpContext;
import org.json.JSONArray;
import org.json.JSONObject;

public class WLPush
{
  private static final String ERROR_ID = "WLClient.error";
  private static final String FROM_NOTIFICATION_BAR = "notificationBar";
  private static final String NOT_UPDATE_FAILURE = "WLClient.notificationUpdateFailure";
  private static final String OK = "WLClient.ok";
  private static final String RESOURCE_BUNDLE = "com/worklight/wlclient/messages";
  private Activity activity;
  private WLConfig config;
  private Context context;
  private String deviceToken;
  private HttpContext httpContext;
  private boolean isTokenUpdatedOnServer;
  private BroadcastReceiver onMessage;
  private WLOnReadyToSubscribeListener onReadyToSubscribeListener;
  private BroadcastReceiver onRegister;
  private BroadcastReceiver onRegisterError;
  private ArrayList<WLGCMIntentService.Message> pending;
  private ArrayList<JSONObject> pendingPushEvents;
  private HashMap<String, RegisteredEventSource> registeredEventSources;
  private String serverToken;
  private ArrayList<String> subscribedEventSources;
  
  static
  {
    JniLib.a(WLPush.class, 1247);
  }
  
  /* Error */
  WLPush(HttpContext paramHttpContext, WLConfig paramWLConfig, Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 85	java/lang/Object:<init>	()V
    //   4: aload_0
    //   5: iconst_0
    //   6: putfield 87	com/worklight/wlclient/api/WLPush:isTokenUpdatedOnServer	Z
    //   9: aload_0
    //   10: new 89	java/util/ArrayList
    //   13: dup
    //   14: invokespecial 90	java/util/ArrayList:<init>	()V
    //   17: putfield 92	com/worklight/wlclient/api/WLPush:subscribedEventSources	Ljava/util/ArrayList;
    //   20: aload_0
    //   21: new 89	java/util/ArrayList
    //   24: dup
    //   25: invokespecial 90	java/util/ArrayList:<init>	()V
    //   28: putfield 94	com/worklight/wlclient/api/WLPush:pendingPushEvents	Ljava/util/ArrayList;
    //   31: aload_0
    //   32: new 89	java/util/ArrayList
    //   35: dup
    //   36: invokespecial 90	java/util/ArrayList:<init>	()V
    //   39: putfield 96	com/worklight/wlclient/api/WLPush:pending	Ljava/util/ArrayList;
    //   42: aload_0
    //   43: aconst_null
    //   44: putfield 98	com/worklight/wlclient/api/WLPush:serverToken	Ljava/lang/String;
    //   47: aload_0
    //   48: aconst_null
    //   49: putfield 100	com/worklight/wlclient/api/WLPush:deviceToken	Ljava/lang/String;
    //   52: aload_0
    //   53: aconst_null
    //   54: putfield 102	com/worklight/wlclient/api/WLPush:onReadyToSubscribeListener	Lcom/worklight/wlclient/api/WLOnReadyToSubscribeListener;
    //   57: aload_0
    //   58: new 10	com/worklight/wlclient/api/WLPush$3
    //   61: dup
    //   62: aload_0
    //   63: invokespecial 105	com/worklight/wlclient/api/WLPush$3:<init>	(Lcom/worklight/wlclient/api/WLPush;)V
    //   66: putfield 107	com/worklight/wlclient/api/WLPush:onRegister	Landroid/content/BroadcastReceiver;
    //   69: aload_0
    //   70: new 12	com/worklight/wlclient/api/WLPush$4
    //   73: dup
    //   74: aload_0
    //   75: invokespecial 108	com/worklight/wlclient/api/WLPush$4:<init>	(Lcom/worklight/wlclient/api/WLPush;)V
    //   78: putfield 110	com/worklight/wlclient/api/WLPush:onRegisterError	Landroid/content/BroadcastReceiver;
    //   81: aload_0
    //   82: new 14	com/worklight/wlclient/api/WLPush$5
    //   85: dup
    //   86: aload_0
    //   87: invokespecial 111	com/worklight/wlclient/api/WLPush$5:<init>	(Lcom/worklight/wlclient/api/WLPush;)V
    //   90: putfield 113	com/worklight/wlclient/api/WLPush:onMessage	Landroid/content/BroadcastReceiver;
    //   93: aload_3
    //   94: ifnonnull +13 -> 107
    //   97: new 115	java/lang/RuntimeException
    //   100: dup
    //   101: ldc 117
    //   103: invokespecial 120	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   106: athrow
    //   107: getstatic 126	android/os/Build$VERSION:SDK_INT	I
    //   110: bipush 8
    //   112: if_icmpge +43 -> 155
    //   115: new 128	java/lang/StringBuilder
    //   118: dup
    //   119: invokespecial 129	java/lang/StringBuilder:<init>	()V
    //   122: ldc -125
    //   124: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: getstatic 138	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   130: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: ldc -116
    //   135: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: invokevirtual 144	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   141: astore_1
    //   142: aload_1
    //   143: invokestatic 149	com/worklight/common/WLUtils:error	(Ljava/lang/String;)V
    //   146: new 115	java/lang/RuntimeException
    //   149: dup
    //   150: aload_1
    //   151: invokespecial 120	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   154: athrow
    //   155: aload_0
    //   156: aload_3
    //   157: checkcast 151	android/app/Activity
    //   160: putfield 153	com/worklight/wlclient/api/WLPush:activity	Landroid/app/Activity;
    //   163: aload_0
    //   164: getfield 153	com/worklight/wlclient/api/WLPush:activity	Landroid/app/Activity;
    //   167: invokestatic 159	com/google/android/gcm/GCMRegistrar:checkDevice	(Landroid/content/Context;)V
    //   170: aload_0
    //   171: getfield 153	com/worklight/wlclient/api/WLPush:activity	Landroid/app/Activity;
    //   174: invokestatic 162	com/google/android/gcm/GCMRegistrar:checkManifest	(Landroid/content/Context;)V
    //   177: aload_3
    //   178: ldc -92
    //   180: ldc -90
    //   182: invokestatic 170	com/worklight/common/WLUtils:getResourceId	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    //   185: pop
    //   186: aload_0
    //   187: aload_1
    //   188: putfield 172	com/worklight/wlclient/api/WLPush:httpContext	Lorg/apache/http/protocol/HttpContext;
    //   191: aload_0
    //   192: aload_2
    //   193: putfield 174	com/worklight/wlclient/api/WLPush:config	Lcom/worklight/common/WLConfig;
    //   196: aload_0
    //   197: aload_3
    //   198: putfield 176	com/worklight/wlclient/api/WLPush:context	Landroid/content/Context;
    //   201: aload_0
    //   202: invokevirtual 179	com/worklight/wlclient/api/WLPush:unregisterReceivers	()V
    //   205: aload_0
    //   206: getfield 153	com/worklight/wlclient/api/WLPush:activity	Landroid/app/Activity;
    //   209: aload_0
    //   210: getfield 113	com/worklight/wlclient/api/WLPush:onMessage	Landroid/content/BroadcastReceiver;
    //   213: new 181	android/content/IntentFilter
    //   216: dup
    //   217: new 128	java/lang/StringBuilder
    //   220: dup
    //   221: invokespecial 129	java/lang/StringBuilder:<init>	()V
    //   224: aload_0
    //   225: getfield 153	com/worklight/wlclient/api/WLPush:activity	Landroid/app/Activity;
    //   228: invokestatic 185	com/worklight/common/WLUtils:getFullAppName	(Landroid/content/Context;)Ljava/lang/String;
    //   231: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: ldc -69
    //   236: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   239: invokevirtual 144	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   242: invokespecial 188	android/content/IntentFilter:<init>	(Ljava/lang/String;)V
    //   245: invokevirtual 192	android/app/Activity:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   248: pop
    //   249: new 128	java/lang/StringBuilder
    //   252: dup
    //   253: invokespecial 129	java/lang/StringBuilder:<init>	()V
    //   256: aload_0
    //   257: getfield 153	com/worklight/wlclient/api/WLPush:activity	Landroid/app/Activity;
    //   260: invokestatic 185	com/worklight/common/WLUtils:getFullAppName	(Landroid/content/Context;)Ljava/lang/String;
    //   263: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   266: ldc -62
    //   268: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   271: invokevirtual 144	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   274: aload_0
    //   275: getfield 153	com/worklight/wlclient/api/WLPush:activity	Landroid/app/Activity;
    //   278: invokevirtual 198	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   281: invokevirtual 203	android/content/Intent:getAction	()Ljava/lang/String;
    //   284: invokevirtual 209	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   287: ifeq +40 -> 327
    //   290: ldc -45
    //   292: invokestatic 214	com/worklight/common/WLUtils:debug	(Ljava/lang/String;)V
    //   295: aload_0
    //   296: getfield 153	com/worklight/wlclient/api/WLPush:activity	Landroid/app/Activity;
    //   299: invokevirtual 198	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   302: ldc 33
    //   304: iconst_1
    //   305: invokevirtual 218	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   308: pop
    //   309: aload_0
    //   310: getfield 113	com/worklight/wlclient/api/WLPush:onMessage	Landroid/content/BroadcastReceiver;
    //   313: aload_0
    //   314: getfield 153	com/worklight/wlclient/api/WLPush:activity	Landroid/app/Activity;
    //   317: aload_0
    //   318: getfield 153	com/worklight/wlclient/api/WLPush:activity	Landroid/app/Activity;
    //   321: invokevirtual 198	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   324: invokevirtual 224	android/content/BroadcastReceiver:onReceive	(Landroid/content/Context;Landroid/content/Intent;)V
    //   327: aload_0
    //   328: invokespecial 227	com/worklight/wlclient/api/WLPush:cancelAllNotification	()V
    //   331: aload_0
    //   332: invokespecial 230	com/worklight/wlclient/api/WLPush:dispatchPending	()V
    //   335: return
    //   336: astore_1
    //   337: new 115	java/lang/RuntimeException
    //   340: dup
    //   341: new 128	java/lang/StringBuilder
    //   344: dup
    //   345: invokespecial 129	java/lang/StringBuilder:<init>	()V
    //   348: ldc -24
    //   350: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   353: aload_1
    //   354: invokevirtual 235	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   357: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   360: invokevirtual 144	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   363: invokespecial 120	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   366: athrow
    //   367: astore_1
    //   368: new 115	java/lang/RuntimeException
    //   371: dup
    //   372: new 128	java/lang/StringBuilder
    //   375: dup
    //   376: invokespecial 129	java/lang/StringBuilder:<init>	()V
    //   379: ldc -19
    //   381: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   384: aload_1
    //   385: invokevirtual 235	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   388: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   391: invokevirtual 144	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   394: invokespecial 120	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   397: athrow
    //   398: astore_1
    //   399: new 115	java/lang/RuntimeException
    //   402: dup
    //   403: ldc -17
    //   405: invokespecial 120	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   408: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	409	0	this	WLPush
    //   0	409	1	paramHttpContext	HttpContext
    //   0	409	2	paramWLConfig	WLConfig
    //   0	409	3	paramContext	Context
    // Exception table:
    //   from	to	target	type
    //   163	170	336	java/lang/Exception
    //   170	177	367	java/lang/Exception
    //   177	186	398	java/lang/Exception
  }
  
  private native void cancelAllNotification();
  
  private native void dispatch();
  
  private native void dispatchPending();
  
  private native void dispatchPendings();
  
  private native boolean hasPendings();
  
  private native boolean isAbleToSubscribe(String paramString, boolean paramBoolean);
  
  private native boolean isDeviceSupportPush();
  
  private native void onMessage(JSONObject paramJSONObject1, JSONObject paramJSONObject2);
  
  private native void showErrorDialogue(String paramString1, String paramString2, String paramString3);
  
  private native void updateRegisteredEventSources(String paramString1, String paramString2, String paramString3, WLEventSourceListener paramWLEventSourceListener);
  
  private native void updateTokenCallback(String paramString);
  
  public native void clearSubscribedEventSources();
  
  native WLOnReadyToSubscribeListener getOnReadyToSubscribeListener();
  
  public native boolean isForeground();
  
  public native boolean isPushSupported();
  
  public native boolean isSubscribed(String paramString);
  
  public native void registerEventSourceCallback(String paramString1, String paramString2, String paramString3, WLEventSourceListener paramWLEventSourceListener);
  
  public native void setForeground(boolean paramBoolean);
  
  public native void setOnReadyToSubscribeListener(WLOnReadyToSubscribeListener paramWLOnReadyToSubscribeListener);
  
  public native void subscribe(String paramString, WLPushOptions paramWLPushOptions, WLResponseListener paramWLResponseListener);
  
  public native void unregisterReceivers();
  
  public native void unsubscribe(String paramString, WLResponseListener paramWLResponseListener);
  
  public native void updateSubscribedEventSources(JSONArray paramJSONArray);
  
  public native void updateToken(String paramString);
  
  class RegisteredEventSource
  {
    private String adapter;
    private String eventSource;
    private WLEventSourceListener eventSourceListener;
    
    static
    {
      JniLib.a(RegisteredEventSource.class, 1243);
    }
    
    RegisteredEventSource() {}
    
    public native String getAdapter();
    
    public native String getEventSource();
    
    public native WLEventSourceListener getEventSourceListener();
    
    public native void setAdapter(String paramString);
    
    public native void setEventSource(String paramString);
    
    public native void setEventSourceListener(WLEventSourceListener paramWLEventSourceListener);
  }
  
  class SubscribeRequestListener
    implements WLRequestListener
  {
    private String alias;
    
    static
    {
      JniLib.a(SubscribeRequestListener.class, 1244);
    }
    
    public SubscribeRequestListener(String paramString)
    {
      alias = paramString;
    }
    
    public native void onFailure(WLFailResponse paramWLFailResponse);
    
    public native void onSuccess(WLResponse paramWLResponse);
  }
  
  class UnSubscribeRequestListener
    implements WLRequestListener
  {
    private String alias;
    
    static
    {
      JniLib.a(UnSubscribeRequestListener.class, 1245);
    }
    
    public UnSubscribeRequestListener(String paramString)
    {
      alias = paramString;
    }
    
    public native void onFailure(WLFailResponse paramWLFailResponse);
    
    public native void onSuccess(WLResponse paramWLResponse);
  }
  
  class UpdateTokenListener
    implements WLRequestListener
  {
    static
    {
      JniLib.a(UpdateTokenListener.class, 1246);
    }
    
    public UpdateTokenListener() {}
    
    public native void onFailure(WLFailResponse paramWLFailResponse);
    
    public native void onSuccess(WLResponse paramWLResponse);
  }
}
