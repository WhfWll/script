package com.tencent.mm.sdk.diffdev.a;

import android.os.AsyncTask;
import android.util.Log;
import com.tencent.mm.sdk.diffdev.OAuthErrCode;
import com.tencent.mm.sdk.diffdev.OAuthListener;
import org.json.JSONObject;

final class f
  extends AsyncTask<Void, Void, a>
{
  private OAuthListener an;
  private String aq;
  private int aw;
  private String url;
  
  public f(String paramString, OAuthListener paramOAuthListener)
  {
    aq = paramString;
    an = paramOAuthListener;
    url = String.format("https://long.open.weixin.qq.com/connect/l/qrconnect?f=json&uuid=%s", new Object[] { paramString });
  }
  
  static final class a
  {
    public OAuthErrCode ap;
    public String ax;
    public int ay;
    
    a() {}
    
    public static a e(byte[] paramArrayOfByte)
    {
      a localA = new a();
      if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
      {
        Log.e("MicroMsg.SDK.NoopingResult", "parse fail, buf is null");
        ap = OAuthErrCode.WechatAuth_Err_NetworkErr;
        return localA;
      }
      for (;;)
      {
        try
        {
          paramArrayOfByte = new String(paramArrayOfByte, "utf-8");
          try
          {
            paramArrayOfByte = new JSONObject(paramArrayOfByte);
            ay = paramArrayOfByte.getInt("wx_errcode");
            Log.d("MicroMsg.SDK.NoopingResult", String.format("nooping uuidStatusCode = %d", new Object[] { Integer.valueOf(ay) }));
            switch (ay)
            {
            case 405: 
              ap = OAuthErrCode.WechatAuth_Err_NormalErr;
              return localA;
            }
          }
          catch (Exception paramArrayOfByte)
          {
            Log.e("MicroMsg.SDK.NoopingResult", String.format("parse json fail, ex = %s", new Object[] { paramArrayOfByte.getMessage() }));
            ap = OAuthErrCode.WechatAuth_Err_NormalErr;
            return localA;
          }
          ap = OAuthErrCode.WechatAuth_Err_OK;
        }
        catch (Exception paramArrayOfByte)
        {
          Log.e("MicroMsg.SDK.NoopingResult", String.format("parse fail, build String fail, ex = %s", new Object[] { paramArrayOfByte.getMessage() }));
          ap = OAuthErrCode.WechatAuth_Err_NormalErr;
          return localA;
        }
        ax = paramArrayOfByte.getString("wx_code");
        return localA;
        ap = OAuthErrCode.WechatAuth_Err_OK;
        return localA;
        ap = OAuthErrCode.WechatAuth_Err_OK;
        return localA;
        ap = OAuthErrCode.WechatAuth_Err_Timeout;
        return localA;
        ap = OAuthErrCode.WechatAuth_Err_Cancel;
        return localA;
        ap = OAuthErrCode.WechatAuth_Err_NormalErr;
        return localA;
      }
    }
  }
}
