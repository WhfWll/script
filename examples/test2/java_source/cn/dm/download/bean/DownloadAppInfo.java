package cn.dm.download.bean;

import java.io.Serializable;

public class DownloadAppInfo
  implements Serializable
{
  private long O = -1L;
  private String P = "";
  private String Q = "";
  private String R = "";
  private String S = "";
  private long T = 0L;
  private int U;
  private int V;
  private int W;
  private String X;
  private String Y;
  private String Z;
  private String aa;
  private String ab;
  private long p = -1L;
  private int position;
  private int t = 0;
  private int versionCode;
  private String versionName;
  
  public DownloadAppInfo() {}
  
  public long getAppId()
  {
    return O;
  }
  
  public String getAppName()
  {
    return P;
  }
  
  public long getAppSize()
  {
    return p;
  }
  
  public String getClick_tracker()
  {
    return aa;
  }
  
  public long getCurrentDownloadSize()
  {
    return T;
  }
  
  public int getDownloadStatus()
  {
    return t;
  }
  
  public String getDownloadUrl()
  {
    return R;
  }
  
  public int getErrorFlag()
  {
    return W;
  }
  
  public int getIsThirdInstalled()
  {
    return V;
  }
  
  public int getIsUpdate()
  {
    return U;
  }
  
  public String getLogoUrl()
  {
    return S;
  }
  
  public String getPkgName()
  {
    return Q;
  }
  
  public int getPosition()
  {
    return position;
  }
  
  public String getRefer()
  {
    return Z;
  }
  
  public String getSid()
  {
    return ab;
  }
  
  public String getTr()
  {
    return Y;
  }
  
  public String getVendor()
  {
    return X;
  }
  
  public int getVersionCode()
  {
    return versionCode;
  }
  
  public String getVersionName()
  {
    return versionName;
  }
  
  public void setAppId(long paramLong)
  {
    O = paramLong;
  }
  
  public void setAppName(String paramString)
  {
    P = paramString;
  }
  
  public void setAppSize(long paramLong)
  {
    p = paramLong;
  }
  
  public void setClick_tracker(String paramString)
  {
    aa = paramString;
  }
  
  public void setCurrentDownloadSize(long paramLong)
  {
    T = paramLong;
  }
  
  public void setDownloadStatus(int paramInt)
  {
    t = paramInt;
  }
  
  public void setDownloadUrl(String paramString)
  {
    R = paramString;
  }
  
  public void setErrorFlag(int paramInt)
  {
    W = paramInt;
  }
  
  public void setIsThirdInstalled(int paramInt)
  {
    V = paramInt;
  }
  
  public void setIsUpdate(int paramInt)
  {
    U = paramInt;
  }
  
  public void setLogoUrl(String paramString)
  {
    S = paramString;
  }
  
  public void setPkgName(String paramString)
  {
    Q = paramString;
  }
  
  public void setPosition(int paramInt)
  {
    position = paramInt;
  }
  
  public void setRefer(String paramString)
  {
    Z = paramString;
  }
  
  public void setSid(String paramString)
  {
    ab = paramString;
  }
  
  public void setTr(String paramString)
  {
    Y = paramString;
  }
  
  public void setVendor(String paramString)
  {
    X = paramString;
  }
  
  public void setVersionCode(int paramInt)
  {
    versionCode = paramInt;
  }
  
  public void setVersionName(String paramString)
  {
    versionName = paramString;
  }
}
