package com.ta.utdid2.aid;

import android.content.Context;
import com.bangcle.andjni.JniLib;
import com.ut.device.a;
import org.apache.http.client.methods.HttpPost;

public class AidRequester
{
  private static final String AIDFUNCNAME = "/get_aid/";
  private static final String AIDSERVER = "http://hydra.alibaba.com/";
  private static final String NAME_AID = "&aid=";
  private static final String NAME_ID = "&id=";
  private static final String NAME_RESULT_ACTION = "action";
  private static final String NAME_RESULT_AID = "aid";
  private static final String NAME_RESULT_ISERROR = "isError";
  private static final String NAME_RESULT_STATUS = "status";
  private static final String NAME_RESUTL_DATA = "data";
  private static final String NAME_TOKEN = "auth[token]=";
  private static final String NAME_TYPE = "&type=";
  private static final String RSP_ACTION_CHANGED = "changed";
  private static final String RSP_ACTION_NEW = "new";
  private static final String RSP_ACTION_UNCHANGED = "unchanged";
  private static final String RSP_ISERROR_FALSE = "false";
  private static final String RSP_ISERROR_TRUE = "true";
  private static final String RSP_STATUS_INVALID_APP = "404";
  private static final String RSP_STATUS_INVALID_TOKEN = "401";
  private static final String RSP_STATUS_OK = "200";
  private static final int SESSION_TIME_OUT = 1000;
  private static final String TAG = AidRequester.class.getName();
  private static final String TYPE_UTDID = "utdid";
  private static final int WEAK_SESSION_TIME_OUT = 3000;
  private static AidRequester sAidRequester = null;
  private Context mContext;
  private Object mLock = new Object();
  
  static
  {
    JniLib.a(AidRequester.class, 992);
  }
  
  public AidRequester(Context paramContext)
  {
    mContext = paramContext;
  }
  
  private static native String getAidFromJsonRsp(String paramString1, String paramString2);
  
  public static native AidRequester getInstance(Context paramContext);
  
  private static native String getPostUrl(String paramString1, String paramString2, String paramString3, String paramString4);
  
  public native String postRest(String paramString1, String paramString2, String paramString3, String paramString4);
  
  public native void postRestAsync(String paramString1, String paramString2, String paramString3, String paramString4, a paramA);
  
  class PostRestThread
    extends Thread
  {
    String mAppName;
    a mCallback;
    String mOldAid;
    HttpPost mPost;
    String mRspLine = "";
    String mToken = "";
    
    static
    {
      JniLib.a(PostRestThread.class, 991);
    }
    
    public PostRestThread(HttpPost paramHttpPost)
    {
      mPost = paramHttpPost;
    }
    
    public PostRestThread(HttpPost paramHttpPost, a paramA, String paramString1, String paramString2, String paramString3)
    {
      mPost = paramHttpPost;
      mCallback = paramA;
      mOldAid = paramString1;
      mAppName = paramString2;
      mToken = paramString3;
    }
    
    public native String getResponseLine();
    
    public native void run();
  }
}
