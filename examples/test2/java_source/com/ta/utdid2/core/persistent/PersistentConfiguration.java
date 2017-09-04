package com.ta.utdid2.core.persistent;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Environment;
import com.bangcle.andjni.JniLib;
import com.ta.utdid2.android.utils.StringUtils;
import java.io.File;
import java.util.Map;

public class PersistentConfiguration
{
  private static final String KEY_TIMESTAMP = "t";
  private static final String KEY_TIMESTAMP2 = "t2";
  private boolean mCanRead = false;
  private boolean mCanWrite = false;
  private String mConfigName = "";
  private Context mContext = null;
  private SharedPreferences.Editor mEditor = null;
  private String mFolderName = "";
  private boolean mIsLessMode = false;
  private boolean mIsSafety = false;
  private MySharedPreferences.MyEditor mMyEditor = null;
  private MySharedPreferences mMySP = null;
  private SharedPreferences mSp = null;
  private TransactionXMLFile mTxf = null;
  
  static
  {
    JniLib.a(PersistentConfiguration.class, 1008);
  }
  
  public PersistentConfiguration(Context paramContext, String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2)
  {
    mIsSafety = paramBoolean1;
    mIsLessMode = paramBoolean2;
    mConfigName = paramString2;
    mFolderName = paramString1;
    mContext = paramContext;
    l1 = 0L;
    if (paramContext != null)
    {
      mSp = paramContext.getSharedPreferences(paramString2, 0);
      l1 = mSp.getLong("t", 0L);
    }
    localObject = null;
    try
    {
      String str = Environment.getExternalStorageState();
      localObject = str;
    }
    catch (Exception localException)
    {
      long l2;
      long l3;
      long l4;
      for (;;)
      {
        try
        {
          mMySP = mTxf.getMySharedPreferences(paramString2, 0);
          l2 = mMySP.getLong("t", 0L);
          if (!paramBoolean2) {
            if (l1 <= l2) {}
          }
        }
        catch (Exception paramContext)
        {
          l2 = l1;
          l1 = 0L;
        }
        try
        {
          copySPToMySP(mSp, mMySP);
          mMySP = mTxf.getMySharedPreferences(paramString2, 0);
          l3 = l2;
          l2 = l1;
          l1 = l3;
          if ((l2 != l1) || ((l2 == 0L) && (l1 == 0L)))
          {
            l3 = System.currentTimeMillis();
            if ((!mIsLessMode) || ((mIsLessMode) && (l2 == 0L) && (l1 == 0L))) {
              if (mSp != null)
              {
                paramContext = mSp.edit();
                paramContext.putLong("t2", l3);
                paramContext.commit();
              }
            }
          }
          try
          {
            if (mMySP != null)
            {
              paramContext = mMySP.edit();
              paramContext.putLong("t2", l3);
              paramContext.commit();
            }
            return;
          }
          catch (Exception paramContext)
          {
            return;
          }
          localException = localException;
          localException.printStackTrace();
        }
        catch (Exception paramContext)
        {
          l3 = l1;
          l1 = l2;
          l2 = l3;
          break label898;
        }
        if (localObject.equals("mounted_ro"))
        {
          mCanRead = true;
          mCanWrite = false;
        }
        else
        {
          mCanWrite = false;
          mCanRead = false;
          continue;
          if (l1 < l2)
          {
            copyMySPToSP(mMySP, mSp);
            mSp = paramContext.getSharedPreferences(paramString2, 0);
            l3 = l1;
            l1 = l2;
            l2 = l3;
          }
          else if (l1 == l2)
          {
            copySPToMySP(mSp, mMySP);
            mMySP = mTxf.getMySharedPreferences(paramString2, 0);
            l3 = l1;
            l1 = l2;
            l2 = l3;
            continue;
            l3 = mSp.getLong("t2", 0L);
            try
            {
              l4 = mMySP.getLong("t2", 0L);
              if ((l3 >= l4) || (l3 <= 0L)) {}
            }
            catch (Exception paramContext)
            {
              l1 = l2;
              l2 = l3;
            }
          }
          else
          {
            try
            {
              copySPToMySP(mSp, mMySP);
              mMySP = mTxf.getMySharedPreferences(paramString2, 0);
              l1 = l4;
              l2 = l3;
            }
            catch (Exception paramContext)
            {
              l2 = l3;
              l1 = l4;
            }
            if ((l3 > l4) && (l4 > 0L))
            {
              copyMySPToSP(mMySP, mSp);
              mSp = paramContext.getSharedPreferences(paramString2, 0);
              l1 = l4;
              l2 = l3;
            }
            else if ((l3 == 0L) && (l4 > 0L))
            {
              copyMySPToSP(mMySP, mSp);
              mSp = paramContext.getSharedPreferences(paramString2, 0);
              l1 = l4;
              l2 = l3;
            }
            else if ((l4 == 0L) && (l3 > 0L))
            {
              copySPToMySP(mSp, mMySP);
              mMySP = mTxf.getMySharedPreferences(paramString2, 0);
              l1 = l4;
              l2 = l3;
            }
            else
            {
              l1 = l4;
              l2 = l3;
              if (l3 == l4)
              {
                copySPToMySP(mSp, mMySP);
                mMySP = mTxf.getMySharedPreferences(paramString2, 0);
                l1 = l4;
                l2 = l3;
                continue;
                l3 = l1;
                l1 = l2;
                l2 = l3;
                continue;
                l2 = l1;
                l1 = 0L;
              }
            }
          }
        }
      }
    }
    if (!StringUtils.isEmpty(localObject)) {
      if (localObject.equals("mounted"))
      {
        mCanWrite = true;
        mCanRead = true;
        if (((!mCanRead) && (!mCanWrite)) || (paramContext == null) || (StringUtils.isEmpty(paramString1))) {
          break label879;
        }
        mTxf = getTransactionXMLFile(paramString1);
        if (mTxf == null) {
          break label879;
        }
      }
    }
  }
  
  private native boolean checkSDCardXMLFile();
  
  private native void copyMySPToSP(MySharedPreferences paramMySharedPreferences, SharedPreferences paramSharedPreferences);
  
  private native void copySPToMySP(SharedPreferences paramSharedPreferences, MySharedPreferences paramMySharedPreferences);
  
  private native File getRootFolder(String paramString);
  
  private native TransactionXMLFile getTransactionXMLFile(String paramString);
  
  private native void initEditor();
  
  public native void clear();
  
  public native boolean commit();
  
  public native Map<String, ?> getAll();
  
  public native boolean getBoolean(String paramString);
  
  public native float getFloat(String paramString);
  
  public native int getInt(String paramString);
  
  public native long getLong(String paramString);
  
  public native String getString(String paramString);
  
  public native void putBoolean(String paramString, boolean paramBoolean);
  
  public native void putFloat(String paramString, float paramFloat);
  
  public native void putInt(String paramString, int paramInt);
  
  public native void putLong(String paramString, long paramLong);
  
  public native void putString(String paramString1, String paramString2);
  
  public native void reload();
  
  public native void remove(String paramString);
}
