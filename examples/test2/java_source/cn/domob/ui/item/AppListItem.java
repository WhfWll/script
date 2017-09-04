package cn.domob.ui.item;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Gallery;
import android.widget.Gallery.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import cn.dm.download.DownLoadManager;
import cn.dm.download.bean.DownloadAppInfo;
import cn.dm.download.listener.DownloadHelperListener;
import cn.domob.ui.adapter.DetailsGalleryAdapter;
import cn.domob.ui.main.Constants.DownloadStatus;
import cn.domob.ui.main.Logger;
import cn.domob.ui.utility.DColor;
import cn.domob.ui.utility.DDrawable;
import cn.domob.ui.utility.DId;
import cn.domob.ui.utility.DLayout;
import cn.domob.ui.utility.DString;
import cn.domob.ui.utility.DUtil;
import cn.domob.wall.core.DService;
import cn.domob.wall.core.DService.OnImageDownload;
import cn.domob.wall.core.bean.AdInfo;
import cn.domob.wall.core.bean.AdInfo.ClickActionType;
import cn.domob.wall.core.bean.ControlInfo;
import java.text.DecimalFormat;

public class AppListItem
  implements DownloadHelperListener
{
  private static final int SHOW_DOWNLOAD_BAR = 0;
  private static final int SHOW_INSTALL_BAR = 2;
  private static final int SHOW_OPEN_BAR = 3;
  private static final int SHOW_PROGRESS_BAR = 1;
  private static Logger mLogger = new Logger(AppListItem.class.getSimpleName());
  private final String DOWNLOAD_IMG_URL = "u_list_download";
  private final int HANDLER_DOWNLOADFAILED = 0;
  private final int HANDLER_REFRESHDETAILS = 1;
  private final String INSTALL_IMG_URL = "u_list_install";
  private final String LANDING_IMG_URL = "u_list_browser";
  private final String LAUNCH_IMG_URL = "u_list_open";
  private final String TEXT_DOWNLOAD_CONTINUE = "继续";
  private final String TEXT_DOWNLOAD_ONGOING = "下载中";
  private final String TEXT_DOWNLOAD_START = "免费下载";
  private final String TEXT_DOWNLOAD_WAITING = "等待中";
  private final String TEXT_INSTALL = "安装";
  private final String TEXT_LANDING_OPEN = "查看详情";
  private final String TEXT_LAUNCH = "打开";
  private final String TEXT_UPDATE = "升级";
  private DownLoadManager dm;
  private AppItemStatusChangeListener downloadListener;
  Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (what)
      {
      default: 
      case 0: 
        do
        {
          return;
        } while (mContext == null);
        Toast.makeText(mContext, DString.getStringInt(mContext, "download_failed"), 0).show();
        return;
      }
      AppListItem.this.buildDetailsActionArea();
    }
  };
  private ImageView iv_download;
  private ImageView iv_install;
  private ImageView iv_open;
  private AdInfo mAdInfo;
  private a mBannerViewHolder;
  private Context mContext;
  private ControlInfo mControlInfo;
  private DService mDService;
  private Dialog mDetailsDialog;
  private RelativeLayout mDetailsView;
  private DownloadAppInfo mDownloadAppInfo;
  private c mListViewHolder;
  private String mListenerName;
  private int mPosition;
  private ProgressBar pb_progress;
  private RelativeLayout rl_download_operations;
  private RelativeLayout rl_progress_bar;
  private TextView tv_progress;
  
  public AppListItem(Context paramContext, AppItemStatusChangeListener paramAppItemStatusChangeListener, AdInfo paramAdInfo, DService paramDService, DownLoadManager paramDownLoadManager, ControlInfo paramControlInfo, String paramString)
  {
    mAdInfo = paramAdInfo;
    mContext = paramContext;
    mDService = paramDService;
    dm = paramDownLoadManager;
    downloadListener = paramAppItemStatusChangeListener;
    mDownloadAppInfo = dm.checkAndGetDownloadAppInfo(DUtil.buildDownLoadAppInfo(mAdInfo));
    if (mDownloadAppInfo.getDownloadStatus() != 0) {
      dm.addTask(mDownloadAppInfo, paramString, this);
    }
    mControlInfo = paramControlInfo;
    mListenerName = paramString;
  }
  
  private void bindDetailsViewsForDownloadAndUpdate()
  {
    int i = 0;
    switch (mDownloadAppInfo.getDownloadStatus())
    {
    case 7: 
    default: 
      changeDownloadBarState(0);
    case 0: 
    case 1: 
    case 2: 
    case 3: 
    case 8: 
    case 4: 
    case 5: 
      do
      {
        do
        {
          return;
          changeDownloadBarState(0);
          return;
          changeDownloadBarState(0);
          return;
          if (mDownloadAppInfo.getAppSize() > 0L) {
            i = (int)((float)mDownloadAppInfo.getCurrentDownloadSize() / (float)mDownloadAppInfo.getAppSize() * 100.0F);
          }
          changeDownloadBarState(1);
        } while ((pb_progress == null) || (tv_progress == null));
        pb_progress.setProgress(i);
        tv_progress.setText(i + "%");
        return;
        changeDownloadBarState(0);
        return;
        changeDownloadBarState(2);
        return;
        if (mAdInfo.getAdActionType().equals(AdInfo.ClickActionType.DOWNLOAD))
        {
          changeDownloadBarState(3);
          return;
        }
      } while (!mAdInfo.getAdActionType().equals(AdInfo.ClickActionType.UPDATE));
      changeDownloadBarState(0);
      return;
    }
    changeDownloadBarState(0);
  }
  
  private void bindDetailsViewsForLaunch()
  {
    changeDownloadBarState(3);
  }
  
  private void bindListViewsForDownloadAndUpdate()
  {
    displayApkSize();
    switch (mDownloadAppInfo.getDownloadStatus())
    {
    case 7: 
    default: 
      setListActionArea(null, "");
    case 0: 
    case 1: 
    case 2: 
    case 8: 
    case 3: 
    case 4: 
    case 5: 
      do
      {
        do
        {
          return;
          if (mAdInfo.getAdActionType().equals(AdInfo.ClickActionType.DOWNLOAD))
          {
            setListActionArea("u_list_download", "免费下载");
            return;
          }
        } while (!mAdInfo.getAdActionType().equals(AdInfo.ClickActionType.UPDATE));
        setListActionArea("u_list_download", "升级");
        return;
        setListActionArea(null, "等待中");
        return;
        mLogger.debugLog("show progress for: " + mDownloadAppInfo.getAppName());
        int i = 0;
        if (mDownloadAppInfo.getAppSize() > 0L) {
          i = (int)((float)mDownloadAppInfo.getCurrentDownloadSize() / (float)mDownloadAppInfo.getAppSize() * 100.0F);
        }
        setListActionArea(null, String.valueOf(i) + "%");
        return;
        setListActionArea(null, "继续");
        return;
        setListActionArea(null, "继续");
        return;
        setListActionArea("u_list_install", "安装");
        return;
        if (mAdInfo.getAdActionType().equals(AdInfo.ClickActionType.DOWNLOAD))
        {
          setListActionArea("u_list_open", "打开");
          return;
        }
      } while (!mAdInfo.getAdActionType().equals(AdInfo.ClickActionType.UPDATE));
      setListActionArea("u_list_download", "升级");
      return;
    }
    setListActionArea("u_list_download", "升级");
  }
  
  private void bindListViewsForLanding()
  {
    hideApkSize();
    setListActionArea("u_list_browser", "查看详情");
  }
  
  private void bindListViewsForLaunch()
  {
    hideApkSize();
    setListActionArea("u_list_open", "打开");
  }
  
  private void buildDetailsActionArea()
  {
    AdInfo.ClickActionType localClickActionType = mAdInfo.getAdActionType();
    switch (9.a[localClickActionType.ordinal()])
    {
    case 3: 
    case 4: 
    default: 
      return;
    case 1: 
    case 2: 
      bindDetailsViewsForDownloadAndUpdate();
      return;
    }
    bindDetailsViewsForLaunch();
  }
  
  private void buildDetailsCommonView()
  {
    mDetailsView = ((RelativeLayout)LayoutInflater.from(mContext).inflate(DLayout.getLayoutInt(mContext, "l_details"), null));
    rl_download_operations = ((RelativeLayout)mDetailsView.findViewById(DId.getIdInt(mContext, "dl01")));
    setDetailsActionClickListener();
    mDetailsView.findViewById(DId.getIdInt(mContext, "details_close")).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        AppListItem.mLogger.debugLog("detail view dismiss");
        if (mDetailsDialog != null) {
          mDetailsDialog.dismiss();
        }
      }
    });
    Object localObject1 = (ScrollView)mDetailsView.findViewById(DId.getIdInt(mContext, "scroll"));
    if (DUtil.getRealScreenHeight(mContext) > DUtil.getRealScreenWidth(mContext)) {}
    for (int i = DUtil.getRealScreenHeight(mContext);; i = DUtil.getRealScreenWidth(mContext))
    {
      if ((int)(i / DUtil.getRealDensity(mContext)) <= 500)
      {
        localObject2 = ((ScrollView)localObject1).getLayoutParams();
        height = ((int)(310.0F * DUtil.getRealDensity(mContext)));
        ((ScrollView)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject2);
      }
      localObject1 = (Gallery)mDetailsView.findViewById(DId.getIdInt(mContext, "details_gallery_screenshot"));
      ((Gallery)localObject1).setAdapter(new DetailsGalleryAdapter(mAdInfo.getScreenshot(), mContext, mDService));
      ((Gallery)localObject1).setOnItemClickListener(new AdapterView.OnItemClickListener()
      {
        public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong) {}
      });
      localObject1 = (ImageView)mDetailsView.findViewById(DId.getIdInt(mContext, "details_logo"));
      ((ImageView)localObject1).setTag(mAdInfo.getAdLogoURL());
      mDService.requestImage(mAdInfo.getAdLogoURL(), (ImageView)localObject1, new DService.OnImageDownload()
      {
        public void onDownloadFail(String paramAnonymousString, ImageView paramAnonymousImageView)
        {
          AppListItem.mLogger.errorLog("Get img fails" + paramAnonymousString);
        }
        
        public void onDownloadSuc(Bitmap paramAnonymousBitmap, String paramAnonymousString, ImageView paramAnonymousImageView)
        {
          if ((paramAnonymousImageView.getTag().equals(paramAnonymousString)) && (paramAnonymousBitmap != null)) {
            paramAnonymousImageView.setImageBitmap(paramAnonymousBitmap);
          }
        }
      });
      ((TextView)mDetailsView.findViewById(DId.getIdInt(mContext, "details_name"))).setText(mAdInfo.getAdName());
      ((TextView)mDetailsView.findViewById(DId.getIdInt(mContext, "details_versionName"))).setText("版本:" + mAdInfo.getAdVersionName());
      localObject1 = (TextView)mDetailsView.findViewById(DId.getIdInt(mContext, "details_apkSize"));
      i = mAdInfo.getAdSize();
      Object localObject2 = new DecimalFormat("0.00").format(i / 1024.0F / 1024.0F);
      ((TextView)localObject1).setText("大小:" + (String)localObject2 + "M");
      localObject1 = (TextView)mDetailsView.findViewById(DId.getIdInt(mContext, "details_details"));
      localObject2 = new SpannableString("简介：");
      ((SpannableString)localObject2).setSpan(new ForegroundColorSpan(mContext.getResources().getColor(DColor.getColorInt(mContext, "details_text_color"))), 0, 3, 33);
      ((SpannableString)localObject2).setSpan(new AbsoluteSizeSpan((int)DUtil.getScreenDensity(mContext) * 14), 0, 2, 33);
      ((TextView)localObject1).setText((CharSequence)localObject2);
      ((TextView)localObject1).append(mAdInfo.getAdDetailDescription());
      iv_download = ((ImageView)mDetailsView.findViewById(DId.getIdInt(mContext, "iv_download")));
      iv_install = ((ImageView)mDetailsView.findViewById(DId.getIdInt(mContext, "iv_install")));
      iv_open = ((ImageView)mDetailsView.findViewById(DId.getIdInt(mContext, "iv_open")));
      rl_progress_bar = ((RelativeLayout)mDetailsView.findViewById(DId.getIdInt(mContext, "rl_progress_bar")));
      pb_progress = ((ProgressBar)mDetailsView.findViewById(DId.getIdInt(mContext, "pb_progress")));
      tv_progress = ((TextView)mDetailsView.findViewById(DId.getIdInt(mContext, "tv_progress")));
      return;
    }
  }
  
  private void buildListActionArea()
  {
    setListActionClickListener();
    AdInfo.ClickActionType localClickActionType = mAdInfo.getAdActionType();
    switch (9.a[localClickActionType.ordinal()])
    {
    default: 
      return;
    case 1: 
    case 2: 
      bindListViewsForDownloadAndUpdate();
      return;
    case 3: 
    case 4: 
      bindListViewsForLanding();
      return;
    }
    bindListViewsForLaunch();
  }
  
  private void buildListCommonArea()
  {
    mListViewHolder.a.setImageResource(DDrawable.getDrawableInt(mContext, "u_list_logo"));
    mListViewHolder.a.setTag(mAdInfo.getAdLogoURL());
    mDService.requestImage(mAdInfo.getAdLogoURL(), mListViewHolder.a, new DService.OnImageDownload()
    {
      public void onDownloadFail(String paramAnonymousString, ImageView paramAnonymousImageView)
      {
        AppListItem.mLogger.errorLog("Get img fails" + paramAnonymousString);
      }
      
      public void onDownloadSuc(Bitmap paramAnonymousBitmap, String paramAnonymousString, ImageView paramAnonymousImageView)
      {
        if ((paramAnonymousImageView.getTag().equals(paramAnonymousString)) && (paramAnonymousBitmap != null)) {
          paramAnonymousImageView.setImageBitmap(paramAnonymousBitmap);
        }
      }
    });
    if (mAdInfo.isNew()) {
      mListViewHolder.b.setVisibility(0);
    }
    for (;;)
    {
      mListViewHolder.c.setText(mAdInfo.getAdTitle());
      mListViewHolder.d.setText(mAdInfo.getAdBriefText());
      return;
      mListViewHolder.b.setVisibility(4);
    }
  }
  
  private c buildViewHolder(View paramView)
  {
    Object localObject = paramView.getTag();
    if (localObject != null) {
      return (c)localObject;
    }
    mListViewHolder = new c(null);
    mListViewHolder.a = ((ImageView)paramView.findViewById(DId.getIdInt(mContext, "lsit_logo")));
    mListViewHolder.b = ((ImageView)paramView.findViewById(DId.getIdInt(mContext, "lsit_logo_new")));
    mListViewHolder.c = ((TextView)paramView.findViewById(DId.getIdInt(mContext, "list_name")));
    mListViewHolder.d = ((TextView)paramView.findViewById(DId.getIdInt(mContext, "list_describe")));
    mListViewHolder.e = ((LinearLayout)paramView.findViewById(DId.getIdInt(mContext, "list_download_ll")));
    mListViewHolder.f = ((RelativeLayout)paramView.findViewById(DId.getIdInt(mContext, "list_actiontype_bg")));
    mListViewHolder.g = ((ImageView)paramView.findViewById(DId.getIdInt(mContext, "list_actiontype")));
    mListViewHolder.h = ((TextView)paramView.findViewById(DId.getIdInt(mContext, "list_action_des")));
    mListViewHolder.i = ((TextView)paramView.findViewById(DId.getIdInt(mContext, "list_apksize")));
    mListViewHolder.h.setTextColor(Color.parseColor("#E6421C"));
    paramView.setTag(mListViewHolder);
    return mListViewHolder;
  }
  
  private void changeDownloadBarState(int paramInt)
  {
    if (mDetailsView != null) {}
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      rl_download_operations.setVisibility(0);
      rl_progress_bar.setVisibility(8);
      return;
    case 1: 
      rl_progress_bar.setVisibility(0);
      rl_download_operations.setVisibility(8);
      return;
    case 2: 
      rl_progress_bar.setVisibility(8);
      rl_download_operations.setVisibility(0);
      iv_download.setVisibility(8);
      iv_install.setVisibility(0);
      iv_open.setVisibility(8);
      return;
    }
    rl_progress_bar.setVisibility(8);
    rl_download_operations.setVisibility(0);
    iv_download.setVisibility(8);
    iv_install.setVisibility(8);
    iv_open.setVisibility(0);
  }
  
  private void clickActionForDetailsLanding()
  {
    mDService.onClickDetailsPageButton(mAdInfo);
  }
  
  private void clickActionForDetailsLaunch()
  {
    mDService.onClickDetailsPageButton(mAdInfo);
  }
  
  private void clickActionForDownloadAndUpdate(b paramB)
  {
    int i = mDownloadAppInfo.getDownloadStatus();
    switch (i)
    {
    case 1: 
    case 2: 
    case 7: 
    default: 
    case 0: 
    case 3: 
    case 8: 
    case 4: 
    case 5: 
      do
      {
        return;
        mLogger.debugLog("start to download:" + mDownloadAppInfo.getAppName() + " status:" + i);
        if (paramB.equals(b.a)) {
          mDService.doClickWallItemButtonReport(mAdInfo);
        }
        dm.addTask(mDownloadAppInfo, mListenerName, this);
        dm.excuteDownload(mDownloadAppInfo);
        return;
        dm.excuteResume(mDownloadAppInfo);
        return;
        dm.excuteInstall(mContext, mDownloadAppInfo);
        return;
        if (mAdInfo.getAdActionType().equals(AdInfo.ClickActionType.DOWNLOAD))
        {
          dm.excuteOpen(mContext, mDownloadAppInfo);
          return;
        }
      } while (!mAdInfo.getAdActionType().equals(AdInfo.ClickActionType.UPDATE));
      dm.excuteDownload(mDownloadAppInfo);
      return;
    }
    dm.excuteDownload(mDownloadAppInfo);
  }
  
  private void clickActionForListLanding()
  {
    mDService.onClickWallItemButton(mAdInfo);
  }
  
  private void clickActionForListLaunch()
  {
    mDService.onClickWallItemButton(mAdInfo);
  }
  
  private void displayApkSize()
  {
    String str = new DecimalFormat("0.00").format(mAdInfo.getAdSize() / 1024.0F / 1024.0F);
    if (mListViewHolder != null)
    {
      mListViewHolder.i.setText(str + "M");
      mListViewHolder.i.setVisibility(0);
    }
  }
  
  private void hideApkSize()
  {
    if (mListViewHolder != null) {
      mListViewHolder.i.setVisibility(8);
    }
  }
  
  private void notifyStatusChange(Constants.DownloadStatus paramDownloadStatus)
  {
    if (downloadListener != null) {
      downloadListener.onAppItemDownloadStatusChanged(paramDownloadStatus);
    }
    handler.sendEmptyMessage(1);
  }
  
  private void setDetailsActionClickListener()
  {
    if (rl_download_operations != null) {
      rl_download_operations.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (mDetailsDialog != null) {
            mDetailsDialog.dismiss();
          }
          mDService.doClickDetailsPageButtonReport(mAdInfo);
          switch (AppListItem.9.a[mAdInfo.getAdActionType().ordinal()])
          {
          default: 
            return;
          case 1: 
          case 2: 
            AppListItem.this.clickActionForDownloadAndUpdate(AppListItem.b.b);
            return;
          case 3: 
          case 4: 
            AppListItem.this.clickActionForDetailsLanding();
            return;
          }
          AppListItem.this.clickActionForDetailsLaunch();
        }
      });
    }
  }
  
  private void setListActionArea(String paramString1, String paramString2)
  {
    if (mListViewHolder != null)
    {
      if (paramString1 == null) {
        break label104;
      }
      mListViewHolder.f.setVisibility(0);
      mListViewHolder.g.setVisibility(0);
      mListViewHolder.g.setBackgroundResource(DDrawable.getDrawableInt(mContext, paramString1));
    }
    for (;;)
    {
      mListViewHolder.h.setText(paramString2);
      if ((mControlInfo != null) && (!mControlInfo.isButtonShow()))
      {
        mListViewHolder.h.setVisibility(8);
        mListViewHolder.f.setVisibility(8);
      }
      return;
      label104:
      mListViewHolder.f.setVisibility(8);
      mListViewHolder.g.setVisibility(8);
    }
  }
  
  private void setListActionClickListener()
  {
    if (mListViewHolder != null) {
      mListViewHolder.e.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          AppListItem.mLogger.debugLog("action area clicked");
          switch (AppListItem.9.a[mAdInfo.getAdActionType().ordinal()])
          {
          default: 
            return;
          case 1: 
          case 2: 
            AppListItem.this.clickActionForDownloadAndUpdate(AppListItem.b.a);
            return;
          case 3: 
          case 4: 
            mDService.doClickWallItemButtonReport(mAdInfo);
            AppListItem.this.clickActionForListLanding();
            return;
          }
          mDService.doClickWallItemButtonReport(mAdInfo);
          AppListItem.this.clickActionForListLaunch();
        }
      });
    }
  }
  
  public View bindBannerViews(View paramView, int paramInt)
  {
    String str = mAdInfo.getAdBannerImageURL();
    if (paramView == null)
    {
      paramView = LayoutInflater.from(mContext).inflate(DLayout.getLayoutInt(mContext, "l_home_gallery"), null);
      paramView.setLayoutParams(new Gallery.LayoutParams(-1, -2));
      mBannerViewHolder = new a(null);
      mBannerViewHolder.a = ((ImageView)paramView.findViewById(DId.getIdInt(mContext, "gallery_image")));
      paramView.setTag(mBannerViewHolder);
    }
    for (;;)
    {
      if ((str != null) && (str != ""))
      {
        mBannerViewHolder.a.setTag(str);
        mDService.requestImage(str, mBannerViewHolder.a, new DService.OnImageDownload()
        {
          public void onDownloadFail(String paramAnonymousString, ImageView paramAnonymousImageView)
          {
            AppListItem.mLogger.errorLog("Get img fails" + paramAnonymousString);
          }
          
          public void onDownloadSuc(Bitmap paramAnonymousBitmap, String paramAnonymousString, ImageView paramAnonymousImageView)
          {
            if ((paramAnonymousImageView.getTag().equals(paramAnonymousString)) && (paramAnonymousBitmap != null)) {
              paramAnonymousImageView.setImageBitmap(paramAnonymousBitmap);
            }
          }
        });
      }
      mBannerViewHolder.a.setScaleType(ImageView.ScaleType.FIT_XY);
      return paramView;
      mBannerViewHolder = ((a)paramView.getTag());
    }
  }
  
  public View bindDetailsView(Dialog paramDialog)
  {
    mDetailsDialog = paramDialog;
    buildDetailsCommonView();
    buildDetailsActionArea();
    return mDetailsView;
  }
  
  public void bindListViews(View paramView, int paramInt)
  {
    mListViewHolder = buildViewHolder(paramView);
    mPosition = paramInt;
    mAdInfo.setAdActualPosition(mPosition);
    mLogger.ptLog("Start binding list view:" + mPosition);
    buildListCommonArea();
    buildListActionArea();
    mLogger.ptLog("Finish binding list view:" + mPosition);
  }
  
  public AdInfo getAdInfo()
  {
    return mAdInfo;
  }
  
  public void onDownloadCancel(DownloadAppInfo paramDownloadAppInfo)
  {
    mDownloadAppInfo = paramDownloadAppInfo;
    mLogger.debugLog("onDownloadCancel:" + paramDownloadAppInfo.getAppName() + ":" + paramDownloadAppInfo.getDownloadStatus());
    notifyStatusChange(Constants.DownloadStatus.DOWNLOADCANCEL);
  }
  
  public void onDownloadFailed(DownloadAppInfo paramDownloadAppInfo)
  {
    mDownloadAppInfo = paramDownloadAppInfo;
    mLogger.debugLog("onDownloadFailed:" + paramDownloadAppInfo.getAppName() + ":" + paramDownloadAppInfo.getDownloadStatus());
    notifyStatusChange(Constants.DownloadStatus.DOWNLOADFAILED);
    handler.sendEmptyMessage(0);
  }
  
  public void onDownloadPause(DownloadAppInfo paramDownloadAppInfo)
  {
    mDownloadAppInfo = paramDownloadAppInfo;
    mLogger.debugLog("onDownloadPause:" + paramDownloadAppInfo.getAppName() + ":" + paramDownloadAppInfo.getDownloadStatus());
    notifyStatusChange(Constants.DownloadStatus.DOWNLOADPAUSE);
  }
  
  public void onDownloadResume(DownloadAppInfo paramDownloadAppInfo)
  {
    mDownloadAppInfo = paramDownloadAppInfo;
    mLogger.debugLog("onDownloadResume:" + paramDownloadAppInfo.getAppName() + ":" + paramDownloadAppInfo.getDownloadStatus());
    notifyStatusChange(Constants.DownloadStatus.DOWNLOADRESUME);
  }
  
  public void onDownloadStart(DownloadAppInfo paramDownloadAppInfo)
  {
    mDownloadAppInfo = paramDownloadAppInfo;
    mLogger.debugLog("onDownloadStart:" + paramDownloadAppInfo.getAppName() + ":" + paramDownloadAppInfo.getDownloadStatus());
    notifyStatusChange(Constants.DownloadStatus.DOWNLOADSTART);
  }
  
  public void onDownloadSuccess(DownloadAppInfo paramDownloadAppInfo)
  {
    mDownloadAppInfo = paramDownloadAppInfo;
    mLogger.debugLog("onDownloadSuccess:" + paramDownloadAppInfo.getAppName() + ":" + paramDownloadAppInfo.getDownloadStatus());
    notifyStatusChange(Constants.DownloadStatus.DOWNLOADSUCCESS);
  }
  
  public void onDownloadWaiting(DownloadAppInfo paramDownloadAppInfo)
  {
    mDownloadAppInfo = paramDownloadAppInfo;
    mLogger.debugLog("onDownloadWaiting:" + paramDownloadAppInfo.getAppName() + ":" + paramDownloadAppInfo.getDownloadStatus());
    notifyStatusChange(Constants.DownloadStatus.DOWNLOADWAITING);
  }
  
  public void onInstallSuccess(DownloadAppInfo paramDownloadAppInfo)
  {
    mDownloadAppInfo = paramDownloadAppInfo;
    mLogger.debugLog("onInstallSuccess:" + paramDownloadAppInfo.getAppName() + ":" + paramDownloadAppInfo.getDownloadStatus());
    notifyStatusChange(Constants.DownloadStatus.INSTALLSUCCESS);
  }
  
  public void onProgressChange(DownloadAppInfo paramDownloadAppInfo)
  {
    mDownloadAppInfo = paramDownloadAppInfo;
    mLogger.debugLog("onProgressChange:" + paramDownloadAppInfo.getAppName() + ":" + paramDownloadAppInfo.getDownloadStatus());
    notifyStatusChange(Constants.DownloadStatus.PROGRESSCHANGE);
  }
  
  public void onUninstallSuccess(DownloadAppInfo paramDownloadAppInfo)
  {
    mDownloadAppInfo = paramDownloadAppInfo;
    mLogger.debugLog("onUninstallSuccess:" + paramDownloadAppInfo.getAppName() + ":" + paramDownloadAppInfo.getDownloadStatus());
    notifyStatusChange(Constants.DownloadStatus.UNINSTALLSUCCESS);
  }
  
  public static abstract interface AppItemStatusChangeListener
  {
    public abstract void onAppItemDownloadStatusChanged(Constants.DownloadStatus paramDownloadStatus);
  }
  
  private class a
  {
    ImageView a;
    
    private a() {}
  }
  
  private static enum b
  {
    private b() {}
  }
  
  private class c
  {
    ImageView a;
    ImageView b;
    TextView c;
    TextView d;
    LinearLayout e;
    RelativeLayout f;
    ImageView g;
    TextView h;
    TextView i;
    
    private c() {}
  }
}
