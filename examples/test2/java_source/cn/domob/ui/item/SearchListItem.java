package cn.domob.ui.item;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import cn.dm.download.DownLoadManager;
import cn.dm.download.bean.DownloadAppInfo;
import cn.dm.download.listener.DownloadHelperListener;
import cn.domob.ui.main.Constants.DownloadStatus;
import cn.domob.ui.main.Logger;
import cn.domob.ui.utility.DColor;
import cn.domob.ui.utility.DDrawable;
import cn.domob.ui.utility.DId;
import cn.domob.ui.utility.DString;
import cn.domob.ui.utility.DUtil;
import cn.domob.wall.core.DService;
import cn.domob.wall.core.DService.OnImageDownload;
import cn.domob.wall.core.bean.AdInfo;
import cn.domob.wall.core.bean.AdInfo.ClickActionType;
import cn.domob.wall.core.bean.ControlInfo;
import java.text.DecimalFormat;

public class SearchListItem
  implements DownloadHelperListener
{
  private static Logger mLogger = new Logger(SearchListItem.class.getSimpleName());
  private DownLoadManager dm;
  View.OnClickListener downloadClick = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      switch (mDownLoadStatus)
      {
      default: 
        mAdInfo.setAdActualPosition(mPosition);
        mDService.doClickWallItemReport(mAdInfo);
      case 1: 
      case 2: 
      case 7: 
        return;
      case 0: 
        if ((mAdInfo.isDownloadAd()) && (("DOWNLOAD".equals(mAdInfo.getAdActionType().name())) || ("UPDATE".equals(mAdInfo.getAdActionType().name())))) {
          dm.excuteDownload(mAppInfo);
        }
        mAdInfo.setAdActualPosition(mPosition);
        mDService.doClickWallItemReport(mAdInfo);
        return;
      case 3: 
        dm.excuteResume(mAppInfo);
        return;
      case 4: 
        dm.excuteInstall(mContext, mAppInfo);
        return;
      case 5: 
        dm.excuteOpen(mContext, mAppInfo);
        return;
      }
      dm.excuteDownload(mAppInfo);
    }
  };
  private Handler errorHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      Toast.makeText(mContext, DString.getStringInt(mContext, "download_failed"), 0).show();
    }
  };
  private AdInfo mAdInfo;
  private DownloadAppInfo mAppInfo;
  private Context mContext;
  private ControlInfo mControlInfo;
  private DService mDService;
  private int mDownLoadStatus = 0;
  private SearchItemStatusChangeListener mDownloadStatusChangeListener;
  private int mPosition;
  private int mProgress = 0;
  private a mViewHolder;
  
  public SearchListItem(Context paramContext, SearchItemStatusChangeListener paramSearchItemStatusChangeListener, AdInfo paramAdInfo, DService paramDService, DownLoadManager paramDownLoadManager, ControlInfo paramControlInfo)
  {
    mDownloadStatusChangeListener = paramSearchItemStatusChangeListener;
    dm = paramDownLoadManager;
    mContext = paramContext;
    mAdInfo = paramAdInfo;
    mAppInfo = dm.checkAndGetDownloadAppInfo(DUtil.buildDownLoadAppInfo(paramAdInfo));
    dm.addTask(mAppInfo, SearchListItem.class.getName(), this);
    mDService = paramDService;
    mControlInfo = paramControlInfo;
  }
  
  private void bindViewsForAPK(a paramA, int paramInt)
  {
    if (mAppInfo != null)
    {
      d.setOnClickListener(downloadClick);
      b.setText(mAdInfo.getAdTitle());
      h.setText(mAdInfo.getAdVersionName());
      a.setImageResource(DDrawable.getDrawableInt(mContext, "u_list_logo"));
      a.setTag(mAdInfo.getAdLogoURL());
      mDService.requestImage(mAdInfo.getAdLogoURL(), a, new DService.OnImageDownload()
      {
        public void onDownloadFail(String paramAnonymousString, ImageView paramAnonymousImageView)
        {
          SearchListItem.mLogger.errorLog("Get img fails:" + paramAnonymousString);
        }
        
        public void onDownloadSuc(Bitmap paramAnonymousBitmap, String paramAnonymousString, ImageView paramAnonymousImageView)
        {
          if ((paramAnonymousImageView.getTag().equals(paramAnonymousString)) && (paramAnonymousBitmap != null)) {
            paramAnonymousImageView.setImageBitmap(paramAnonymousBitmap);
          }
        }
      });
      if (mControlInfo.isButtonShow()) {
        break label135;
      }
      mViewHolder.e.setVisibility(4);
      mViewHolder.g.setVisibility(4);
    }
    label135:
    Object localObject;
    do
    {
      return;
      localObject = mAdInfo.getAdActionType();
      if (((AdInfo.ClickActionType)localObject).equals(AdInfo.ClickActionType.DOWNLOAD))
      {
        bindViewsForDownload(paramA, (AdInfo.ClickActionType)localObject);
        localObject = new DecimalFormat("0.00").format(mAdInfo.getAdSize() / 1024.0F / 1024.0F);
        c.setText((String)localObject + "M");
        return;
      }
      if (((AdInfo.ClickActionType)localObject).equals(AdInfo.ClickActionType.UPDATE))
      {
        bindViewsForDownload(paramA, (AdInfo.ClickActionType)localObject);
        localObject = new DecimalFormat("0.00").format(mAdInfo.getAdSize() / 1024.0F / 1024.0F);
        c.setText((String)localObject + "M");
        return;
      }
      if (((AdInfo.ClickActionType)localObject).equals(AdInfo.ClickActionType.INTERNAL_BROWSER))
      {
        pullData(paramA, "u_list_browser", "查看详情", "", 4);
        return;
      }
      if (((AdInfo.ClickActionType)localObject).equals(AdInfo.ClickActionType.EXTERNAL_BROWSER))
      {
        pullData(paramA, "u_list_browser", "查看详情", "", 4);
        return;
      }
    } while (!((AdInfo.ClickActionType)localObject).equals("LAUNCH"));
    c.setVisibility(4);
  }
  
  private void bindViewsForDownload(a paramA, AdInfo.ClickActionType paramClickActionType)
  {
    if (mAppInfo != null) {}
    switch (mAppInfo.getDownloadStatus())
    {
    case 7: 
    default: 
      return;
    case 0: 
      mDownLoadStatus = 0;
      if ((paramClickActionType.equals(AdInfo.ClickActionType.UPDATE)) && (mControlInfo.isShowUpdate())) {}
      for (paramClickActionType = "升级";; paramClickActionType = "免费下载")
      {
        pullData(paramA, "u_list_download", paramClickActionType, "", 0);
        return;
      }
    case 1: 
      mDownLoadStatus = 1;
      f.setVisibility(8);
      e.setVisibility(8);
      g.setText("等待中");
      g.setTextColor(DColor.getColorInt(mContext, "list_download"));
      c.setVisibility(0);
      return;
    case 2: 
      mDownLoadStatus = 2;
      f.setVisibility(8);
      e.setVisibility(8);
      mProgress = ((int)((float)mAppInfo.getCurrentDownloadSize() / (float)mAppInfo.getAppSize() * 100.0F));
      g.setText(mProgress + "%");
      g.setTextColor(DColor.getColorInt(mContext, "list_download"));
      c.setVisibility(0);
      return;
    case 3: 
      mDownLoadStatus = 3;
      f.setVisibility(8);
      e.setVisibility(8);
      g.setText("继续");
      g.setTextColor(DColor.getColorInt(mContext, "list_download"));
      c.setVisibility(0);
      return;
    case 4: 
      mDownLoadStatus = 4;
      pullData(paramA, "u_list_install", "安装", "", 0);
      return;
    case 5: 
      mDownLoadStatus = 5;
      pullData(paramA, "u_list_open", "打开", "", 0);
      return;
    case 6: 
      mDownLoadStatus = 6;
      pullData(paramA, "u_list_download", "升级", "", 0);
      return;
    }
    mDownLoadStatus = 3;
    f.setVisibility(8);
    e.setVisibility(8);
    g.setText("继续");
    g.setTextColor(DColor.getColorInt(mContext, "list_download"));
    c.setVisibility(0);
  }
  
  private void notifyStatusChange(Constants.DownloadStatus paramDownloadStatus)
  {
    if (mDownloadStatusChangeListener != null) {
      mDownloadStatusChangeListener.onSearchItemDownloadStatusChanged(paramDownloadStatus);
    }
  }
  
  private void pullData(a paramA, String paramString1, String paramString2, String paramString3, int paramInt)
  {
    e.setVisibility(0);
    f.setVisibility(0);
    f.setBackgroundResource(DDrawable.getDrawableInt(mContext, paramString1));
    g.setText(paramString2);
    g.setTextColor(Color.parseColor("#E6421C"));
    c.setVisibility(paramInt);
  }
  
  private a setupViewHolder(View paramView)
  {
    Object localObject = paramView.getTag();
    if (localObject != null) {
      return (a)localObject;
    }
    mViewHolder = new a(null);
    mViewHolder.a = ((ImageView)paramView.findViewById(DId.getIdInt(mContext, "iv_app_logo")));
    mViewHolder.b = ((TextView)paramView.findViewById(DId.getIdInt(mContext, "tv_app_name")));
    mViewHolder.c = ((TextView)paramView.findViewById(DId.getIdInt(mContext, "tv_app_size")));
    mViewHolder.h = ((TextView)paramView.findViewById(DId.getIdInt(mContext, "tv_app_version")));
    mViewHolder.d = ((LinearLayout)paramView.findViewById(DId.getIdInt(mContext, "list_download_ll")));
    mViewHolder.e = ((RelativeLayout)paramView.findViewById(DId.getIdInt(mContext, "list_actiontype_bg")));
    mViewHolder.f = ((ImageView)paramView.findViewById(DId.getIdInt(mContext, "list_actiontype")));
    mViewHolder.g = ((TextView)paramView.findViewById(DId.getIdInt(mContext, "list_action_des")));
    paramView.setTag(mViewHolder);
    return mViewHolder;
  }
  
  public void bindViews(View paramView, int paramInt)
  {
    mPosition = paramInt;
    mViewHolder = setupViewHolder(paramView);
    bindViewsForAPK(mViewHolder, paramInt);
  }
  
  public DownloadAppInfo getDownloadAppInfo()
  {
    return mAppInfo;
  }
  
  public AdInfo getmAdInfo()
  {
    return mAdInfo;
  }
  
  public void onDownloadCancel(DownloadAppInfo paramDownloadAppInfo)
  {
    mAppInfo = paramDownloadAppInfo;
    notifyStatusChange(Constants.DownloadStatus.DOWNLOADCANCEL);
  }
  
  public void onDownloadFailed(DownloadAppInfo paramDownloadAppInfo)
  {
    mAppInfo = paramDownloadAppInfo;
    errorHandler.sendEmptyMessage(0);
    notifyStatusChange(Constants.DownloadStatus.DOWNLOADFAILED);
  }
  
  public void onDownloadPause(DownloadAppInfo paramDownloadAppInfo)
  {
    mAppInfo = paramDownloadAppInfo;
    notifyStatusChange(Constants.DownloadStatus.DOWNLOADPAUSE);
  }
  
  public void onDownloadResume(DownloadAppInfo paramDownloadAppInfo)
  {
    mAppInfo = paramDownloadAppInfo;
    notifyStatusChange(Constants.DownloadStatus.DOWNLOADRESUME);
  }
  
  public void onDownloadStart(DownloadAppInfo paramDownloadAppInfo)
  {
    mAppInfo = paramDownloadAppInfo;
    notifyStatusChange(Constants.DownloadStatus.DOWNLOADSTART);
  }
  
  public void onDownloadSuccess(DownloadAppInfo paramDownloadAppInfo)
  {
    mAppInfo = paramDownloadAppInfo;
    notifyStatusChange(Constants.DownloadStatus.DOWNLOADSUCCESS);
  }
  
  public void onDownloadWaiting(DownloadAppInfo paramDownloadAppInfo)
  {
    mAppInfo = paramDownloadAppInfo;
    notifyStatusChange(Constants.DownloadStatus.DOWNLOADWAITING);
  }
  
  public void onInstallSuccess(DownloadAppInfo paramDownloadAppInfo)
  {
    mAppInfo = paramDownloadAppInfo;
    notifyStatusChange(Constants.DownloadStatus.INSTALLSUCCESS);
  }
  
  public void onProgressChange(DownloadAppInfo paramDownloadAppInfo)
  {
    mAppInfo = paramDownloadAppInfo;
    notifyStatusChange(Constants.DownloadStatus.PROGRESSCHANGE);
  }
  
  public void onUninstallSuccess(DownloadAppInfo paramDownloadAppInfo)
  {
    mAppInfo = paramDownloadAppInfo;
    notifyStatusChange(Constants.DownloadStatus.UNINSTALLSUCCESS);
  }
  
  public static abstract interface SearchItemStatusChangeListener
  {
    public abstract void onSearchItemDownloadStatusChanged(Constants.DownloadStatus paramDownloadStatus);
  }
  
  private class a
  {
    ImageView a;
    TextView b;
    TextView c;
    LinearLayout d;
    RelativeLayout e;
    ImageView f;
    TextView g;
    TextView h;
    
    private a() {}
  }
}
