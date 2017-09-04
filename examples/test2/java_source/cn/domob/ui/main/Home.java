package cn.domob.ui.main;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.text.TextPaint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.RelativeLayout;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabSpec;
import android.widget.TextView;
import cn.dm.download.DownLoadManager;
import cn.dm.download.bean.DownloadAppInfo;
import cn.dm.download.listener.DownloadReportListener;
import cn.domob.ui.adapter.AppListAdapter;
import cn.domob.ui.item.AppListItem.AppItemStatusChangeListener;
import cn.domob.ui.utility.DColor;
import cn.domob.ui.utility.DDrawable;
import cn.domob.ui.utility.DId;
import cn.domob.ui.utility.DLayout;
import cn.domob.ui.utility.DString;
import cn.domob.ui.utility.DUtil;
import cn.domob.ui.view.AdWallListView;
import cn.domob.wall.core.DService;
import cn.domob.wall.core.DService.EWallReportType;
import cn.domob.wall.core.DService.ReportDownLoadType;
import cn.domob.wall.core.bean.AdExtend;
import cn.domob.wall.core.bean.AdInfo;
import cn.domob.wall.core.bean.ControlInfo;
import java.util.List;

public class Home
  implements DownloadReportListener, AppListItem.AppItemStatusChangeListener
{
  private static Logger mLogger = new Logger(Home.class.getSimpleName());
  private String OneListTag = "OneList";
  private final int REFRESHDOWNLOADTOOL = 1;
  private final int REFRESHLIST = 0;
  private String allListTag = "AllList";
  private String appListTag = "AppList";
  private DownLoadManager dlm;
  private String gameListTag = "GameList";
  Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (what)
      {
      default: 
        return;
      case 0: 
        Home.this.notifyListChanged();
        return;
      }
      Home.this.initDownloaderTool();
    }
  };
  private ProgressBar home_progress;
  private TextView home_progress_tv;
  private AdResp mAdResp;
  private RadioButton mAdWallRadioButton;
  private AdWallListView mAllappListView;
  private AppListContainer mAppListContainer;
  private AdWallListView mAppsListView;
  private RelativeLayout mBackButton;
  private Context mContext;
  private ControlInfo mControlInfo;
  private DService mDService;
  private RelativeLayout mDownloaderRl;
  private RadioButton mEWallRadioButton;
  private RelativeLayout mEWallRelativeLayout;
  private AdWallListView mGamesListView;
  private RelativeLayout mHomeView;
  private HomeViewListener mHomeViewlistener;
  private RelativeLayout mHome_progress_rl;
  private RelativeLayout mOneListRelativeLayout;
  private AdWallListView mOneListView;
  private ImageView mSearchImageView;
  private String mTAB_ALL;
  private String mTAB_APP;
  private String mTAB_GAME;
  private TabHost mTabHost;
  private ImageView mTab_bg_background_all;
  private ImageView mTab_bg_background_app;
  private ImageView mTab_bg_background_game;
  private RadioGroup mTitleRadioGroup;
  private boolean showEWallEntry = false;
  
  public Home(Context paramContext, DService paramDService)
  {
    mContext = paramContext;
    mLogger.ptLog("Start to init home view");
    mHomeView = ((RelativeLayout)LayoutInflater.from(mContext).inflate(DLayout.getLayoutInt(mContext, "l_home"), null));
    mLogger.ptLog("Finish to init home view");
    mDService = paramDService;
    dlm = DownLoadManager.getInstance(mContext);
    dlm.setDownloadReportListener(this);
    dlm.initAllDownloadAppInfoList();
    mAppListContainer = new AppListContainer(paramContext, paramDService, this, dlm);
    mAdResp = new AdResp();
    initView();
    setHomeViewVisible(a.b);
  }
  
  private void doDownloadReport(DownloadAppInfo paramDownloadAppInfo, DService.ReportDownLoadType paramReportDownLoadType)
  {
    try
    {
      AdInfo localAdInfo = DUtil.buildAdInfo(paramDownloadAppInfo);
      if (localAdInfo != null)
      {
        mLogger.debugLog("doDownloadReport for: " + paramDownloadAppInfo.getAppName() + " type:" + paramReportDownLoadType.toString());
        mDService.doDownLoadReport(localAdInfo, paramReportDownLoadType);
        return;
      }
      mLogger.errorLog("fail to send report:" + paramReportDownLoadType.toString());
      return;
    }
    catch (Exception paramDownloadAppInfo)
    {
      mLogger.errorLog("exception occurs when sending report");
    }
  }
  
  private void initBackButton()
  {
    mBackButton = ((RelativeLayout)mHomeView.findViewById(DId.getIdInt(mContext, "bar_button")));
    mBackButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Home.mLogger.debugLog("backButton clicked");
        if (mHomeViewlistener != null) {
          mHomeViewlistener.onBackButtonClicked();
        }
      }
    });
  }
  
  private void initDownloaderTool()
  {
    mDownloaderRl = ((RelativeLayout)mHomeView.findViewById(DId.getIdInt(mContext, "rl_download_entrance")));
    refreshDownloadingCount();
    mDownloaderRl.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (mHomeViewlistener != null) {
          mHomeViewlistener.onDownloadToolButtonClicked();
        }
      }
    });
  }
  
  private void initLoadingProgress()
  {
    mHome_progress_rl = ((RelativeLayout)mHomeView.findViewById(DId.getIdInt(mContext, "home_progress_rl")));
    home_progress = ((ProgressBar)mHomeView.findViewById(DId.getIdInt(mContext, "home_progress")));
    home_progress_tv = ((TextView)mHomeView.findViewById(DId.getIdInt(mContext, "home_progress_tv")));
  }
  
  private void initOneListView()
  {
    mOneListRelativeLayout = ((RelativeLayout)mHomeView.findViewById(DId.getIdInt(mContext, "onlylistRelativeS")));
    mOneListView = ((AdWallListView)mHomeView.findViewById(DId.getIdInt(mContext, "list_only")));
    mOneListView.setDService(mDService);
    mOneListView.setViewTag(OneListTag);
  }
  
  private void initRadioButton()
  {
    mEWallRelativeLayout = ((RelativeLayout)mHomeView.findViewById(DId.getIdInt(mContext, "rl_webview")));
    mTitleRadioGroup = ((RadioGroup)mHomeView.findViewById(DId.getIdInt(mContext, "rg_home_bar")));
    mAdWallRadioButton = ((RadioButton)mTitleRadioGroup.findViewById(DId.getIdInt(mContext, "rb_recommend_Button")));
    mEWallRadioButton = ((RadioButton)mTitleRadioGroup.findViewById(DId.getIdInt(mContext, "rb_electronic_page_Button")));
    mTitleRadioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener()
    {
      public void onCheckedChanged(RadioGroup paramAnonymousRadioGroup, int paramAnonymousInt)
      {
        paramAnonymousInt = paramAnonymousRadioGroup.getCheckedRadioButtonId();
        if (paramAnonymousInt == mAdWallRadioButton.getId()) {
          mEWallRelativeLayout.setVisibility(8);
        }
        while (paramAnonymousInt != mEWallRadioButton.getId()) {
          return;
        }
        Home.mLogger.debugLog("Send report:E_ENTRY_CLICK");
        mDService.doEWallReport(DService.EWallReportType.E_ENTRY_CLICK);
        if (mEWallRelativeLayout.getChildCount() > 0)
        {
          Home.mLogger.debugLog("Remove child view");
          mEWallRelativeLayout.removeAllViews();
        }
        mEWallRelativeLayout.addView(mDService.getEView(mContext));
        mEWallRelativeLayout.setVisibility(0);
      }
    });
  }
  
  private void initSearchButton()
  {
    mSearchImageView = ((ImageView)mHomeView.findViewById(DId.getIdInt(mContext, "iv_search_bt")));
    mSearchImageView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Home.mLogger.debugLog("searchButton clicked");
        if (mHomeViewlistener != null) {
          mHomeViewlistener.onSearchButtonClicked();
        }
      }
    });
  }
  
  private void initTabListView()
  {
    mLogger.debugLog("initListView");
    mAppsListView = ((AdWallListView)mHomeView.findViewById(DId.getIdInt(mContext, "list_app")));
    mGamesListView = ((AdWallListView)mHomeView.findViewById(DId.getIdInt(mContext, "list_game")));
    mAllappListView = ((AdWallListView)mHomeView.findViewById(DId.getIdInt(mContext, "list_all")));
    mAppsListView.setDService(mDService);
    mGamesListView.setDService(mDService);
    mAllappListView.setDService(mDService);
    mAppsListView.setViewTag(appListTag);
    mGamesListView.setViewTag(gameListTag);
    mAllappListView.setViewTag(allListTag);
  }
  
  private void initTabView()
  {
    mLogger.debugLog("initTabView");
    mTabHost = ((TabHost)mHomeView.findViewById(16908306));
    mTabHost.setup();
    String str1 = mContext.getString(DString.getStringInt(mContext, "tab_app"));
    String str2 = mContext.getString(DString.getStringInt(mContext, "tab_game"));
    String str3 = mContext.getString(DString.getStringInt(mContext, "tab_all"));
    Object localObject2 = mContext.getString(DString.getStringInt(mContext, "tab_app_english"));
    String str4 = mContext.getString(DString.getStringInt(mContext, "tab_game_english"));
    Object localObject1 = mContext.getString(DString.getStringInt(mContext, "tab_all_english"));
    View localView = LayoutInflater.from(mContext).inflate(DLayout.getLayoutInt(mContext, "l_home_tab_element"), null);
    mTab_bg_background_all = ((ImageView)localView.findViewById(DId.getIdInt(mContext, "tab_bg_select")));
    ((ImageView)localView.findViewById(DId.getIdInt(mContext, "tab_image"))).setImageResource(DDrawable.getDrawableInt(mContext, "u_home_tab_all"));
    final TextView localTextView1 = (TextView)localView.findViewById(DId.getIdInt(mContext, "tab_name"));
    localTextView1.setText(str3);
    final TextView localTextView2 = (TextView)localView.findViewById(DId.getIdInt(mContext, "tab_name_english"));
    localTextView2.setText((CharSequence)localObject1);
    ((TextView)localView.findViewById(DId.getIdInt(mContext, "tab_name"))).getPaint().setFakeBoldText(true);
    localObject1 = LayoutInflater.from(mContext).inflate(DLayout.getLayoutInt(mContext, "l_home_tab_element"), null);
    mTab_bg_background_app = ((ImageView)((View)localObject1).findViewById(DId.getIdInt(mContext, "tab_bg_select")));
    ((ImageView)((View)localObject1).findViewById(DId.getIdInt(mContext, "tab_image"))).setImageResource(DDrawable.getDrawableInt(mContext, "u_home_tab_app"));
    final TextView localTextView3 = (TextView)((View)localObject1).findViewById(DId.getIdInt(mContext, "tab_name"));
    localTextView3.setText(str1);
    final TextView localTextView4 = (TextView)((View)localObject1).findViewById(DId.getIdInt(mContext, "tab_name_english"));
    localTextView4.setText((CharSequence)localObject2);
    ((TextView)((View)localObject1).findViewById(DId.getIdInt(mContext, "tab_name"))).getPaint().setFakeBoldText(true);
    localObject2 = LayoutInflater.from(mContext).inflate(DLayout.getLayoutInt(mContext, "l_home_tab_element"), null);
    mTab_bg_background_game = ((ImageView)((View)localObject2).findViewById(DId.getIdInt(mContext, "tab_bg_select")));
    ((ImageView)((View)localObject2).findViewById(DId.getIdInt(mContext, "tab_image"))).setImageResource(DDrawable.getDrawableInt(mContext, "u_home_tab_game"));
    final TextView localTextView5 = (TextView)((View)localObject2).findViewById(DId.getIdInt(mContext, "tab_name"));
    localTextView5.setText(str2);
    final TextView localTextView6 = (TextView)((View)localObject2).findViewById(DId.getIdInt(mContext, "tab_name_english"));
    localTextView6.setText(str4);
    ((TextView)((View)localObject2).findViewById(DId.getIdInt(mContext, "tab_name"))).getPaint().setFakeBoldText(true);
    mTabHost.addTab(mTabHost.newTabSpec(str3).setIndicator(localView).setContent(DId.getIdInt(mContext, "list_all")));
    mTabHost.addTab(mTabHost.newTabSpec(str2).setIndicator((View)localObject2).setContent(DId.getIdInt(mContext, "list_game")));
    mTabHost.addTab(mTabHost.newTabSpec(str1).setIndicator((View)localObject1).setContent(DId.getIdInt(mContext, "list_app")));
    setTabVisibility(mTab_bg_background_all, mTab_bg_background_app, mTab_bg_background_game);
    final int i = mContext.getResources().getColor(DColor.getColorInt(mContext, "tab_default"));
    final int j = mContext.getResources().getColor(DColor.getColorInt(mContext, "tab_select"));
    localTextView3.setTextColor(i);
    localTextView4.setTextColor(i);
    localTextView1.setTextColor(j);
    localTextView2.setTextColor(j);
    localTextView5.setTextColor(i);
    localTextView6.setTextColor(i);
    mTabHost.setOnTabChangedListener(new TabHost.OnTabChangeListener()
    {
      public void onTabChanged(String paramAnonymousString)
      {
        Home.mLogger.debugLog("tabId:" + paramAnonymousString);
        Home.access$1002(Home.this, mContext.getString(DString.getStringInt(mContext, "tab_app")));
        Home.access$1102(Home.this, mContext.getString(DString.getStringInt(mContext, "tab_game")));
        Home.access$1202(Home.this, mContext.getString(DString.getStringInt(mContext, "tab_all")));
        if (mTAB_APP.equals(paramAnonymousString))
        {
          Home.this.setTabVisibility(mTab_bg_background_app, mTab_bg_background_all, mTab_bg_background_game);
          localTextView3.setTextColor(j);
          localTextView4.setTextColor(j);
          localTextView1.setTextColor(i);
          localTextView2.setTextColor(i);
          localTextView5.setTextColor(i);
          localTextView6.setTextColor(i);
        }
        do
        {
          return;
          if (mTAB_GAME.equals(paramAnonymousString))
          {
            Home.this.setTabVisibility(mTab_bg_background_game, mTab_bg_background_all, mTab_bg_background_app);
            localTextView3.setTextColor(i);
            localTextView4.setTextColor(i);
            localTextView1.setTextColor(i);
            localTextView2.setTextColor(i);
            localTextView5.setTextColor(j);
            localTextView6.setTextColor(j);
            return;
          }
        } while (!mTAB_ALL.equals(paramAnonymousString));
        Home.this.setTabVisibility(mTab_bg_background_all, mTab_bg_background_app, mTab_bg_background_game);
        localTextView3.setTextColor(i);
        localTextView4.setTextColor(i);
        localTextView1.setTextColor(j);
        localTextView2.setTextColor(j);
        localTextView5.setTextColor(i);
        localTextView6.setTextColor(i);
      }
    });
  }
  
  private void initTitle()
  {
    initBackButton();
    initRadioButton();
    initSearchButton();
    initDownloaderTool();
  }
  
  private void initView()
  {
    initTitle();
    initLoadingProgress();
    initTabView();
    initTabListView();
    initOneListView();
  }
  
  private void notifyListChanged()
  {
    if (mControlInfo != null)
    {
      if (mControlInfo.isClassify())
      {
        mLogger.debugLog("notify change for tab");
        mAllappListView.getListAdapter().notifyDataSetChanged();
        mGamesListView.getListAdapter().notifyDataSetChanged();
        mAppsListView.getListAdapter().notifyDataSetChanged();
      }
    }
    else {
      return;
    }
    mLogger.debugLog("notify change for list");
    mOneListView.getListAdapter().notifyDataSetChanged();
  }
  
  private void refreshEWallView()
  {
    mEWallRelativeLayout.removeAllViews();
  }
  
  private void refreshList(AdResp paramAdResp)
  {
    mLogger.ptLog("Start to refresh list");
    mAppListContainer.doRefresh(paramAdResp);
    if (mControlInfo.isClassify())
    {
      mLogger.debugLog(String.format("Show ad in tab view. list size:%d, banner size:%d", new Object[] { Integer.valueOf(mAppListContainer.getAllList().size()), Integer.valueOf(mAppListContainer.getBannerList().size()) }));
      if ((mControlInfo.isHasBanner()) && (mAppListContainer.getBannerList().size() > 0))
      {
        mAllappListView.refreshItemListWithBanner(mAppListContainer.getAllList(), mControlInfo.getShowAdNum(), mAppListContainer.getBannerList(), mControlInfo.getBannerIntervalTime());
        mGamesListView.refreshItemListWithBanner(mAppListContainer.getGameList(), mControlInfo.getShowAdNum(), mAppListContainer.getBannerList(), mControlInfo.getBannerIntervalTime());
        mAppsListView.refreshItemListWithBanner(mAppListContainer.getAppList(), mControlInfo.getShowAdNum(), mAppListContainer.getBannerList(), mControlInfo.getBannerIntervalTime());
      }
      for (;;)
      {
        setHomeViewVisible(a.c);
        mLogger.ptLog("Refresh list done");
        return;
        mAllappListView.refreshItemListWithNoBanner(mAppListContainer.getAllList(), mControlInfo.getShowAdNum());
        mGamesListView.refreshItemListWithNoBanner(mAppListContainer.getGameList(), mControlInfo.getShowAdNum());
        mAppsListView.refreshItemListWithNoBanner(mAppListContainer.getAppList(), mControlInfo.getShowAdNum());
      }
    }
    mLogger.debugLog("Show ad in single list view");
    if ((mControlInfo.isHasBanner()) && (mAppListContainer.getBannerList().size() > 0)) {
      mOneListView.refreshItemListWithBanner(mAppListContainer.getAllList(), mControlInfo.getShowAdNum(), mAppListContainer.getBannerList(), mControlInfo.getBannerIntervalTime());
    }
    for (;;)
    {
      setHomeViewVisible(a.d);
      break;
      mOneListView.refreshItemListWithNoBanner(mAppListContainer.getAllList(), mControlInfo.getShowAdNum());
    }
  }
  
  private void refreshTitle(AdResp paramAdResp)
  {
    mLogger.ptLog("Start to refresh title");
    if (paramAdResp.getControlInfo() != null)
    {
      if (!paramAdResp.getControlInfo().isShowSearchEntrance()) {
        break label178;
      }
      mSearchImageView.setVisibility(0);
      if ((paramAdResp.getControlInfo() == null) || (paramAdResp.getAdExtend() == null) || (paramAdResp.getAdExtend().size() <= 0) || (!paramAdResp.getControlInfo().isShowEWallEntrance())) {
        break label190;
      }
      paramAdResp = (AdExtend)paramAdResp.getAdExtend().get(0);
      mLogger.debugLog("mAdExtend>>>:" + paramAdResp.toString());
      mEWallRadioButton.setVisibility(0);
      mEWallRadioButton.setText(paramAdResp.getmLabel());
      mAdWallRadioButton.setBackgroundResource(DDrawable.getDrawableInt(mContext, "u_bar_type_left_mode"));
      setShowEWallEntry(true);
      mTitleRadioGroup.check(mAdWallRadioButton.getId());
    }
    for (;;)
    {
      mLogger.ptLog("Refresh title done");
      return;
      label178:
      mSearchImageView.setVisibility(8);
      break;
      label190:
      mLogger.debugLog("EWall is disabled");
      mEWallRadioButton.setVisibility(8);
      mAdWallRadioButton.setBackgroundResource(0);
      setShowEWallEntry(false);
    }
  }
  
  private void setHomeViewVisible(a paramA)
  {
    switch (9.a[paramA.ordinal()])
    {
    default: 
      return;
    case 1: 
      mOneListRelativeLayout.setVisibility(8);
      mHome_progress_rl.setVisibility(8);
      mTabHost.setVisibility(0);
      return;
    case 2: 
      mOneListRelativeLayout.setVisibility(0);
      mHome_progress_rl.setVisibility(8);
      mTabHost.setVisibility(8);
      return;
    }
    mOneListRelativeLayout.setVisibility(8);
    mHome_progress_rl.setVisibility(0);
    mTabHost.setVisibility(8);
  }
  
  private void setTabVisibility(ImageView paramImageView1, ImageView paramImageView2, ImageView paramImageView3)
  {
    paramImageView1.setVisibility(0);
    paramImageView2.setVisibility(4);
    paramImageView3.setVisibility(4);
  }
  
  public DownLoadManager getDownloadManager()
  {
    return dlm;
  }
  
  public View getHomeView()
  {
    return mHomeView;
  }
  
  public boolean isShowEWallEntry()
  {
    return showEWallEntry;
  }
  
  public void onAppItemDownloadStatusChanged(Constants.DownloadStatus paramDownloadStatus)
  {
    handler.sendEmptyMessage(0);
    switch (9.b[paramDownloadStatus.ordinal()])
    {
    default: 
      return;
    }
    handler.sendEmptyMessage(1);
  }
  
  public void onAutoRunReport(DownloadAppInfo paramDownloadAppInfo)
  {
    doDownloadReport(paramDownloadAppInfo, DService.ReportDownLoadType.AUTO_RUN);
  }
  
  public void onDownloadFailedReport(DownloadAppInfo paramDownloadAppInfo)
  {
    doDownloadReport(paramDownloadAppInfo, DService.ReportDownLoadType.DL_FAILED);
  }
  
  public void onDownloadStartReport(DownloadAppInfo paramDownloadAppInfo)
  {
    doDownloadReport(paramDownloadAppInfo, DService.ReportDownLoadType.DL_START);
  }
  
  public void onDownloadSuccessReport(DownloadAppInfo paramDownloadAppInfo)
  {
    doDownloadReport(paramDownloadAppInfo, DService.ReportDownLoadType.DL_FINISH);
  }
  
  public void onDownloadWaitingReport(DownloadAppInfo paramDownloadAppInfo)
  {
    mLogger.debugLog("onDownloadWaitingReport");
  }
  
  public void onInstallSuccessReport(DownloadAppInfo paramDownloadAppInfo)
  {
    doDownloadReport(paramDownloadAppInfo, DService.ReportDownLoadType.INSTALL_SUCCESS);
  }
  
  public void refreshAd(AdResp paramAdResp)
  {
    mLogger.debugLog("refresh resp:" + paramAdResp.toString());
    if (paramAdResp != null)
    {
      mAdResp = paramAdResp;
      mControlInfo = paramAdResp.getControlInfo();
      if (mTabHost != null) {
        mTabHost.setCurrentTab(0);
      }
      refreshTitle(mAdResp);
      refreshList(mAdResp);
      refreshEWallView();
    }
  }
  
  public void refreshDownloadingCount()
  {
    TextView localTextView;
    int i;
    if (mDownloaderRl != null)
    {
      localTextView = (TextView)mDownloaderRl.findViewById(DId.getIdInt(mContext, "tv_download_count"));
      i = dlm.getDownloadingCount();
      if (i <= 0) {
        localTextView.setVisibility(8);
      }
    }
    else
    {
      return;
    }
    localTextView.setVisibility(0);
    localTextView.setText(String.valueOf(i));
  }
  
  public void setHomeViewListener(HomeViewListener paramHomeViewListener)
  {
    mHomeViewlistener = paramHomeViewListener;
  }
  
  public void setShowEWallEntry(boolean paramBoolean)
  {
    showEWallEntry = paramBoolean;
  }
  
  public void showErrorMSG(final String paramString)
  {
    ((Activity)mContext).runOnUiThread(new Runnable()
    {
      public void run()
      {
        mHome_progress_rl.setVisibility(0);
        home_progress.setVisibility(8);
        home_progress_tv.setText(paramString);
        home_progress_tv.setVisibility(0);
        home_progress_tv.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymous2View)
          {
            if (mHomeViewlistener != null) {
              mHomeViewlistener.onRefreshButtonClicked();
            }
          }
        });
      }
    });
  }
  
  public void showProgressBar()
  {
    ((Activity)mContext).runOnUiThread(new Runnable()
    {
      public void run()
      {
        mHome_progress_rl.setVisibility(0);
        home_progress.setVisibility(0);
        home_progress_tv.setVisibility(8);
      }
    });
  }
  
  public static abstract interface HomeViewListener
  {
    public abstract void onBackButtonClicked();
    
    public abstract void onDownloadToolButtonClicked();
    
    public abstract void onRefreshButtonClicked();
    
    public abstract void onSearchButtonClicked();
  }
  
  private static enum a
  {
    private a() {}
  }
}
