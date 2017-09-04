package cn.domob.ui.item;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.dm.download.DownLoadManager;
import cn.dm.download.bean.DownloadAppInfo;
import cn.dm.download.listener.DownloadHelperListener;
import cn.domob.ui.main.Constants.DownloadStatus;
import cn.domob.ui.main.Logger;
import cn.domob.ui.utility.DDrawable;
import cn.domob.ui.utility.DId;
import cn.domob.wall.core.DService;
import cn.domob.wall.core.DService.OnImageDownload;

public class DownLoadListItem
  implements DownloadHelperListener
{
  private static Logger mLogger = new Logger(DownLoadListItem.class.getSimpleName());
  private DownLoadManager dm;
  View.OnClickListener downloadClick = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      switch (mDownLoadStatus)
      {
      case 1: 
      case 6: 
      default: 
        return;
      case 0: 
        dm.excuteDownload(mAppInfo);
        return;
      case 2: 
        dm.excutePause(mAppInfo);
        mHolder.h.setBackgroundResource(DDrawable.getDrawableInt(mContext, "u_download_continue_icon"));
        return;
      case 3: 
        dm.excuteResume(mAppInfo);
        mHolder.h.setBackgroundResource(DDrawable.getDrawableInt(mContext, "u_downloading_icon"));
        return;
      case 4: 
        dm.excuteInstall(mContext, mAppInfo);
        return;
      }
      dm.excuteOpen(mContext, mAppInfo);
    }
  };
  private DownloadAppInfo mAppInfo;
  private Handler mChangeHandler;
  private int mChildPosition;
  private Context mContext;
  private DService mDService;
  private int mDownLoadStatus = 0;
  private int mGroupPosition;
  private a mHolder;
  private DownloadItemStatusChangeListener mListener;
  
  public DownLoadListItem(Context paramContext, DownloadItemStatusChangeListener paramDownloadItemStatusChangeListener, Handler paramHandler, DownloadAppInfo paramDownloadAppInfo, DownLoadManager paramDownLoadManager, DService paramDService)
  {
    dm = paramDownLoadManager;
    mContext = paramContext;
    mDService = paramDService;
    mAppInfo = paramDownLoadManager.checkAndGetDownloadAppInfo(paramDownloadAppInfo);
    mChangeHandler = paramHandler;
    mListener = paramDownloadItemStatusChangeListener;
    dm.addTask(paramDownloadAppInfo, getClass().getName(), this);
    mLogger.debugLog("init download list:" + paramDownloadAppInfo.getAppName() + ":" + paramDownloadAppInfo.getDownloadStatus());
  }
  
  private void bindItemView()
  {
    mLogger.debugLog("bindDownloadViewsForDownload:" + mAppInfo.getAppName() + ", status:" + mAppInfo.getDownloadStatus());
    switch (mAppInfo.getDownloadStatus())
    {
    default: 
      return;
    case 0: 
      mDownLoadStatus = 0;
      mHolder.h.setBackgroundResource(DDrawable.getDrawableInt(mContext, "u_list_download"));
      mHolder.i.setText("下载");
      return;
    case 1: 
      mDownLoadStatus = 1;
      mHolder.h.setBackgroundResource(DDrawable.getDrawableInt(mContext, "u_list_download"));
      mHolder.i.setText("等待中");
      mHolder.d.setProgress(getProgressBar(mAppInfo));
      return;
    case 2: 
      mDownLoadStatus = 2;
      String str = setProgressByte(mAppInfo.getCurrentDownloadSize()) + "/";
      mLogger.debugLog("progress:" + str);
      mHolder.e.setText(str);
      mHolder.h.setBackgroundResource(DDrawable.getDrawableInt(mContext, "u_downloading_icon"));
      mHolder.i.setText(getProgressBar(mAppInfo) + "%");
      mHolder.d.setProgress(getProgressBar(mAppInfo));
      return;
    case 3: 
      mDownLoadStatus = 3;
      mHolder.i.setText("继续");
      mHolder.d.setProgress(getProgressBar(mAppInfo));
      mHolder.h.setBackgroundResource(DDrawable.getDrawableInt(mContext, "u_download_continue_icon"));
      return;
    case 4: 
      mDownLoadStatus = 4;
      mHolder.h.setBackgroundResource(DDrawable.getDrawableInt(mContext, "u_list_install"));
      mHolder.d.setProgress(100);
      mHolder.e.setText(setProgressByte(mAppInfo.getAppSize()) + "/");
      mHolder.i.setText("安装");
      mHolder.i.setTextColor(Color.parseColor("#E6421C"));
      return;
    case 5: 
      mDownLoadStatus = 5;
      mHolder.h.setBackgroundResource(DDrawable.getDrawableInt(mContext, "u_list_open"));
      mHolder.i.setText("打开");
      mHolder.i.setTextColor(Color.parseColor("#E6421C"));
      return;
    case 6: 
      mDownLoadStatus = 6;
      mHolder.h.setBackgroundResource(DDrawable.getDrawableInt(mContext, "u_list_download"));
      mHolder.i.setText("升级");
      return;
    case 7: 
      mDownLoadStatus = 7;
      return;
    }
    mDownLoadStatus = 3;
    mHolder.i.setText("继续");
    mHolder.d.setProgress(getProgressBar(mAppInfo));
    mHolder.h.setBackgroundResource(DDrawable.getDrawableInt(mContext, "u_download_continue_icon"));
  }
  
  private void bindViewsForAPK()
  {
    if (mAppInfo != null)
    {
      mHolder.c.setText(mAppInfo.getAppName());
      mHolder.f.setText(setProgressByte(mAppInfo.getAppSize()));
      switch (mAppInfo.getDownloadStatus())
      {
      default: 
        mHolder.e.setVisibility(0);
        mHolder.d.setVisibility(0);
        mHolder.e.setText(setProgressByte(mAppInfo.getCurrentDownloadSize()) + "/");
      }
    }
    for (;;)
    {
      bindItemView();
      return;
      mHolder.e.setVisibility(8);
      mHolder.d.setVisibility(8);
    }
  }
  
  private int getProgressBar(DownloadAppInfo paramDownloadAppInfo)
  {
    int i = 0;
    if (paramDownloadAppInfo != null) {
      i = (int)((float)paramDownloadAppInfo.getCurrentDownloadSize() / (float)paramDownloadAppInfo.getAppSize() * 100.0F);
    }
    return i;
  }
  
  private void notifyStatusChange(Constants.DownloadStatus paramDownloadStatus)
  {
    if (mListener != null) {
      mListener.onDMItemDownloadStatusChanged(paramDownloadStatus);
    }
  }
  
  private String setProgressByte(long paramLong)
  {
    String str = "";
    float f2 = (float)paramLong;
    float f1 = f2;
    if (f2 > 1024.0F)
    {
      f1 = f2 / 1024.0F;
      str = "KB";
    }
    f2 = f1;
    if (f1 > 1024.0F)
    {
      f2 = f1 / 1024.0F;
      str = "M";
    }
    return String.format("%.2f", new Object[] { Float.valueOf(f2) }) + str;
  }
  
  private a setupViewHolder(View paramView)
  {
    Object localObject = paramView.getTag();
    if (localObject != null) {
      return (a)localObject;
    }
    localObject = new a();
    a = ((RelativeLayout)paramView.findViewById(DId.getIdInt(mContext, "download_list_item_rl_download")));
    b = ((ImageView)paramView.findViewById(DId.getIdInt(mContext, "iv_logo")));
    c = ((TextView)paramView.findViewById(DId.getIdInt(mContext, "tv_app_name")));
    g = ((TextView)paramView.findViewById(DId.getIdInt(mContext, "tv_download_time")));
    d = ((ProgressBar)paramView.findViewById(DId.getIdInt(mContext, "pb_progress")));
    f = ((TextView)paramView.findViewById(DId.getIdInt(mContext, "tv_app_size")));
    e = ((TextView)paramView.findViewById(DId.getIdInt(mContext, "tv_current_progress")));
    f = ((TextView)paramView.findViewById(DId.getIdInt(mContext, "tv_app_size")));
    h = ((ImageView)paramView.findViewById(DId.getIdInt(mContext, "iv_download_state")));
    i = ((TextView)paramView.findViewById(DId.getIdInt(mContext, "tv_state")));
    j = ((TextView)paramView.findViewById(DId.getIdInt(mContext, "tv_delete")));
    paramView.setTag(localObject);
    return localObject;
  }
  
  public void bindViews(View paramView, int paramInt1, int paramInt2)
  {
    mGroupPosition = paramInt1;
    mChildPosition = paramInt2;
    mHolder = setupViewHolder(paramView);
    bindViewsForAPK();
    mHolder.b.setImageResource(DDrawable.getDrawableInt(mContext, "u_list_logo"));
    mHolder.b.setTag(mAppInfo.getLogoUrl());
    mDService.requestImage(mAppInfo.getLogoUrl(), mHolder.b, new DService.OnImageDownload()
    {
      public void onDownloadFail(String paramAnonymousString, ImageView paramAnonymousImageView)
      {
        DownLoadListItem.mLogger.errorLog("Get img fails:" + paramAnonymousString);
      }
      
      public void onDownloadSuc(Bitmap paramAnonymousBitmap, String paramAnonymousString, ImageView paramAnonymousImageView)
      {
        if ((paramAnonymousImageView.getTag().equals(paramAnonymousString)) && (paramAnonymousBitmap != null)) {
          paramAnonymousImageView.setImageBitmap(paramAnonymousBitmap);
        }
      }
    });
    mHolder.a.setOnClickListener(downloadClick);
  }
  
  public DownloadAppInfo getDownloadAppInfo()
  {
    return mAppInfo;
  }
  
  public void onDownloadCancel(DownloadAppInfo paramDownloadAppInfo)
  {
    mLogger.debugLog("onDownloadCancel:" + paramDownloadAppInfo.getAppName() + ":" + paramDownloadAppInfo.getDownloadStatus());
    mAppInfo = paramDownloadAppInfo;
    notifyStatusChange(Constants.DownloadStatus.DOWNLOADCANCEL);
  }
  
  public void onDownloadFailed(DownloadAppInfo paramDownloadAppInfo)
  {
    mLogger.debugLog("onDownloadFailed:" + paramDownloadAppInfo.getAppName() + ":" + paramDownloadAppInfo.getDownloadStatus());
    mAppInfo = paramDownloadAppInfo;
    notifyStatusChange(Constants.DownloadStatus.DOWNLOADFAILED);
  }
  
  public void onDownloadPause(DownloadAppInfo paramDownloadAppInfo)
  {
    mLogger.debugLog("onDownloadPause:" + paramDownloadAppInfo.getAppName() + ":" + paramDownloadAppInfo.getDownloadStatus());
    mAppInfo = paramDownloadAppInfo;
    notifyStatusChange(Constants.DownloadStatus.DOWNLOADPAUSE);
  }
  
  public void onDownloadResume(DownloadAppInfo paramDownloadAppInfo)
  {
    mLogger.debugLog("onDownloadResume:" + paramDownloadAppInfo.getAppName() + ":" + paramDownloadAppInfo.getDownloadStatus());
    mAppInfo = paramDownloadAppInfo;
    notifyStatusChange(Constants.DownloadStatus.DOWNLOADRESUME);
  }
  
  public void onDownloadStart(DownloadAppInfo paramDownloadAppInfo)
  {
    mLogger.debugLog("onDownloadStart:" + paramDownloadAppInfo.getAppName() + ":" + paramDownloadAppInfo.getDownloadStatus());
    mAppInfo = paramDownloadAppInfo;
    notifyStatusChange(Constants.DownloadStatus.DOWNLOADSTART);
  }
  
  public void onDownloadSuccess(DownloadAppInfo paramDownloadAppInfo)
  {
    mLogger.debugLog("onDownloadSuccess:" + paramDownloadAppInfo.getAppName() + ":" + paramDownloadAppInfo.getDownloadStatus());
    mAppInfo = paramDownloadAppInfo;
    notifyStatusChange(Constants.DownloadStatus.DOWNLOADSUCCESS);
  }
  
  public void onDownloadWaiting(DownloadAppInfo paramDownloadAppInfo)
  {
    mLogger.debugLog("onDownloadWaiting:" + paramDownloadAppInfo.getAppName() + ":" + paramDownloadAppInfo.getDownloadStatus());
    mAppInfo = paramDownloadAppInfo;
    notifyStatusChange(Constants.DownloadStatus.DOWNLOADWAITING);
  }
  
  public void onInstallSuccess(DownloadAppInfo paramDownloadAppInfo)
  {
    mLogger.debugLog("onInstallSuccess:" + paramDownloadAppInfo.getAppName() + ":" + paramDownloadAppInfo.getDownloadStatus());
    Bundle localBundle = new Bundle();
    localBundle.putInt("groupPosition", mGroupPosition);
    localBundle.putInt("childPosition", mChildPosition);
    localBundle.putSerializable("downloadappinfo", paramDownloadAppInfo);
    paramDownloadAppInfo = new Message();
    what = 1;
    paramDownloadAppInfo.setData(localBundle);
    if (mChangeHandler != null) {
      mChangeHandler.sendMessage(paramDownloadAppInfo);
    }
  }
  
  public void onProgressChange(DownloadAppInfo paramDownloadAppInfo)
  {
    mLogger.debugLog("onProgressChange:" + paramDownloadAppInfo.getAppName() + ":" + paramDownloadAppInfo.getDownloadStatus());
    mAppInfo = paramDownloadAppInfo;
    notifyStatusChange(Constants.DownloadStatus.PROGRESSCHANGE);
  }
  
  public void onUninstallSuccess(DownloadAppInfo paramDownloadAppInfo)
  {
    mLogger.debugLog("onUninstallSuccess:" + paramDownloadAppInfo.getAppName() + ":" + paramDownloadAppInfo.getDownloadStatus());
    mAppInfo = paramDownloadAppInfo;
    notifyStatusChange(Constants.DownloadStatus.UNINSTALLSUCCESS);
  }
  
  public static abstract interface DownloadItemStatusChangeListener
  {
    public abstract void onDMItemDownloadStatusChanged(Constants.DownloadStatus paramDownloadStatus);
  }
  
  static class a
  {
    RelativeLayout a;
    ImageView b;
    TextView c;
    ProgressBar d;
    TextView e;
    TextView f;
    TextView g;
    ImageView h;
    TextView i;
    TextView j;
    
    a() {}
  }
}
