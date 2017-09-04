package cn.dm.download.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteConstraintException;
import cn.dm.download.bean.DownloadAppInfo;
import cn.dm.download.util.b;
import java.util.ArrayList;

public class c
{
  private static b f = new b(c.class.getSimpleName());
  private a av;
  private Context mContext;
  
  public c(Context paramContext)
  {
    mContext = paramContext;
    av = a.b(mContext);
  }
  
  private boolean b(long paramLong)
  {
    localObject3 = null;
    localObject1 = null;
    try
    {
      localCursor = c(Long.valueOf(paramLong));
      localObject1 = localCursor;
      localObject3 = localCursor;
      localB = f;
      localObject1 = localCursor;
      localObject3 = localCursor;
      new StringBuilder("crs count and columncount is:").append(localCursor.getCount()).append("  ,").append(localCursor.getColumnCount());
      localObject1 = localCursor;
      localObject3 = localCursor;
      int i = localCursor.getCount();
      if (i != 0) {
        break label106;
      }
    }
    catch (Exception localException)
    {
      Cursor localCursor;
      label106:
      localObject3 = localObject1;
      b localB = f;
      localObject3 = localObject1;
      localException.getMessage();
      return false;
    }
    finally
    {
      if (localObject3 == null) {
        break label169;
      }
      localObject3.close();
    }
    return false;
    if (localCursor != null) {
      localCursor.close();
    }
    return true;
  }
  
  private Cursor c(Long paramLong)
  {
    try
    {
      paramLong = String.valueOf(paramLong);
      paramLong = av.a("download_app_tab", null, "_app_id=?", new String[] { paramLong }, null);
      return paramLong;
    }
    catch (Exception paramLong)
    {
      b localB = f;
      new StringBuilder("get getDownloadAppInfo failed:").append(paramLong.getMessage());
    }
    return null;
  }
  
  private void e(DownloadAppInfo paramDownloadAppInfo)
  {
    Object localObject = new ContentValues();
    ((ContentValues)localObject).put("_app_id", Long.valueOf(paramDownloadAppInfo.getAppId()));
    ((ContentValues)localObject).put("_app_name", paramDownloadAppInfo.getAppName());
    ((ContentValues)localObject).put("_app_packagename", paramDownloadAppInfo.getPkgName());
    ((ContentValues)localObject).put("_app_download_status", Integer.valueOf(paramDownloadAppInfo.getDownloadStatus()));
    ((ContentValues)localObject).put("_app_size", Long.valueOf(paramDownloadAppInfo.getAppSize()));
    ((ContentValues)localObject).put("_app_download_url", paramDownloadAppInfo.getDownloadUrl());
    ((ContentValues)localObject).put("_app_logo_url", paramDownloadAppInfo.getLogoUrl());
    ((ContentValues)localObject).put("_app_versioncode", Integer.valueOf(paramDownloadAppInfo.getVersionCode()));
    ((ContentValues)localObject).put("_app_isupdate", Integer.valueOf(paramDownloadAppInfo.getIsUpdate()));
    ((ContentValues)localObject).put("_app_tr", paramDownloadAppInfo.getTr());
    ((ContentValues)localObject).put("_app_vender", paramDownloadAppInfo.getVendor());
    ((ContentValues)localObject).put("_app_versionname", paramDownloadAppInfo.getVersionName());
    ((ContentValues)localObject).put("_app_refer", paramDownloadAppInfo.getRefer());
    ((ContentValues)localObject).put("_app_position", Integer.valueOf(paramDownloadAppInfo.getPosition()));
    ((ContentValues)localObject).put("_app_sid", paramDownloadAppInfo.getSid());
    try
    {
      av.a("download_app_tab", (ContentValues)localObject);
      localObject = f;
      new StringBuilder("插入数据，下载状态为：").append(paramDownloadAppInfo.getDownloadStatus()).append("  ,是否真的插入了：").append(b(paramDownloadAppInfo.getAppId()));
      return;
    }
    catch (SQLiteConstraintException localSQLiteConstraintException)
    {
      localB = f;
      new StringBuilder("the ").append(paramDownloadAppInfo.getAppId()).append(" is already exist, insert failed");
      return;
    }
    catch (Exception paramDownloadAppInfo)
    {
      b localB = f;
      paramDownloadAppInfo.getMessage();
    }
  }
  
  public final void a(long paramLong)
  {
    try
    {
      int i = av.delete("download_app_tab", "_app_id=" + paramLong, null);
      b localB1 = f;
      new StringBuilder("删除数据成功，delete number ").append(i);
      return;
    }
    catch (Exception localException)
    {
      b localB2 = f;
    }
  }
  
  public final void f(DownloadAppInfo paramDownloadAppInfo)
  {
    Object localObject = new ContentValues();
    String str = "_app_id=" + paramDownloadAppInfo.getAppId();
    ((ContentValues)localObject).put("_app_download_status", Integer.valueOf(paramDownloadAppInfo.getDownloadStatus()));
    ((ContentValues)localObject).put("_app_versioncode", Integer.valueOf(paramDownloadAppInfo.getVersionCode()));
    ((ContentValues)localObject).put("_app_isupdate", Integer.valueOf(paramDownloadAppInfo.getIsUpdate()));
    int i = av.update("download_app_tab", (ContentValues)localObject, str, null);
    localObject = f;
    new StringBuilder("更新数据库下载状态：").append(paramDownloadAppInfo.getDownloadStatus()).append("  ,appid:").append(paramDownloadAppInfo.getAppId()).append("  ,result:").append(i);
  }
  
  public final void g(DownloadAppInfo paramDownloadAppInfo)
  {
    if (b(paramDownloadAppInfo.getAppId()))
    {
      f(paramDownloadAppInfo);
      return;
    }
    Object localObject = new ContentValues();
    ((ContentValues)localObject).put("_app_id", Long.valueOf(paramDownloadAppInfo.getAppId()));
    ((ContentValues)localObject).put("_app_name", paramDownloadAppInfo.getAppName());
    ((ContentValues)localObject).put("_app_packagename", paramDownloadAppInfo.getPkgName());
    ((ContentValues)localObject).put("_app_download_status", Integer.valueOf(paramDownloadAppInfo.getDownloadStatus()));
    ((ContentValues)localObject).put("_app_size", Long.valueOf(paramDownloadAppInfo.getAppSize()));
    ((ContentValues)localObject).put("_app_download_url", paramDownloadAppInfo.getDownloadUrl());
    ((ContentValues)localObject).put("_app_logo_url", paramDownloadAppInfo.getLogoUrl());
    ((ContentValues)localObject).put("_app_versioncode", Integer.valueOf(paramDownloadAppInfo.getVersionCode()));
    ((ContentValues)localObject).put("_app_isupdate", Integer.valueOf(paramDownloadAppInfo.getIsUpdate()));
    ((ContentValues)localObject).put("_app_tr", paramDownloadAppInfo.getTr());
    ((ContentValues)localObject).put("_app_vender", paramDownloadAppInfo.getVendor());
    ((ContentValues)localObject).put("_app_versionname", paramDownloadAppInfo.getVersionName());
    ((ContentValues)localObject).put("_app_refer", paramDownloadAppInfo.getRefer());
    ((ContentValues)localObject).put("_app_position", Integer.valueOf(paramDownloadAppInfo.getPosition()));
    ((ContentValues)localObject).put("_app_sid", paramDownloadAppInfo.getSid());
    try
    {
      av.a("download_app_tab", (ContentValues)localObject);
      localObject = f;
      new StringBuilder("插入数据，下载状态为：").append(paramDownloadAppInfo.getDownloadStatus()).append("  ,是否真的插入了：").append(b(paramDownloadAppInfo.getAppId()));
      return;
    }
    catch (SQLiteConstraintException localSQLiteConstraintException)
    {
      localB = f;
      new StringBuilder("the ").append(paramDownloadAppInfo.getAppId()).append(" is already exist, insert failed");
      return;
    }
    catch (Exception paramDownloadAppInfo)
    {
      b localB = f;
      paramDownloadAppInfo.getMessage();
    }
  }
  
  public final ArrayList q()
  {
    Cursor localCursor = av.a("download_app_tab", null, null, null, null);
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      if (!localCursor.moveToNext())
      {
        if (localCursor != null) {
          localCursor.close();
        }
        return localArrayList;
      }
      DownloadAppInfo localDownloadAppInfo = new DownloadAppInfo();
      localDownloadAppInfo.setAppId(localCursor.getLong(localCursor.getColumnIndex("_app_id")));
      localDownloadAppInfo.setAppName(localCursor.getString(localCursor.getColumnIndex("_app_name")));
      localDownloadAppInfo.setPkgName(localCursor.getString(localCursor.getColumnIndex("_app_packagename")));
      localDownloadAppInfo.setDownloadStatus(localCursor.getInt(localCursor.getColumnIndex("_app_download_status")));
      localDownloadAppInfo.setAppSize(localCursor.getLong(localCursor.getColumnIndex("_app_size")));
      localDownloadAppInfo.setDownloadUrl(localCursor.getString(localCursor.getColumnIndex("_app_download_url")));
      localDownloadAppInfo.setLogoUrl(localCursor.getString(localCursor.getColumnIndex("_app_logo_url")));
      localDownloadAppInfo.setVersionCode(localCursor.getInt(localCursor.getColumnIndex("_app_versioncode")));
      localDownloadAppInfo.setIsUpdate(localCursor.getInt(localCursor.getColumnIndex("_app_isupdate")));
      localDownloadAppInfo.setTr(localCursor.getString(localCursor.getColumnIndex("_app_tr")));
      localDownloadAppInfo.setVendor(localCursor.getString(localCursor.getColumnIndex("_app_vender")));
      localDownloadAppInfo.setVersionName(localCursor.getString(localCursor.getColumnIndex("_app_versionname")));
      localDownloadAppInfo.setPosition(localCursor.getInt(localCursor.getColumnIndex("_app_position")));
      localDownloadAppInfo.setRefer(localCursor.getString(localCursor.getColumnIndex("_app_refer")));
      localDownloadAppInfo.setSid(localCursor.getString(localCursor.getColumnIndex("_app_sid")));
      localArrayList.add(localDownloadAppInfo);
    }
  }
}
