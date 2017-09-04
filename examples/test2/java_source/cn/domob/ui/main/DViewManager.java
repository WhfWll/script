package cn.domob.ui.main;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.RelativeLayout.LayoutParams;
import cn.dm.download.DownLoadManager;
import cn.domob.ui.utility.DLayout;
import cn.domob.ui.utility.DRes;
import cn.domob.ui.view.DownloadView;
import cn.domob.ui.view.HandleView;
import cn.domob.ui.view.SearchView;
import cn.domob.wall.core.DService;
import cn.domob.wall.core.DService.EWallReportType;
import cn.domob.wall.core.DService.ErrorCode;
import cn.domob.wall.core.DService.ReportUserActionType;
import cn.domob.wall.core.bean.ControlInfo;

public class DViewManager
  implements DViewAdModel.AdDataListener, Home.HomeViewListener
{
  private static final int CENTER = 1;
  private static final int CENTER_VERTICAL = 0;
  private static final int FETCH_AD_FAILED = 1;
  private static final int FETCH_AD_SUCCESS = 0;
  private static final String HANDLEURL = "mHandleUrl";
  private static final String LAST_REQUEST_NET_TIME = "lastRequestNetTime";
  private static final String MTIMEOUT = "mTimeout";
  private static Logger mLogger = new Logger(DViewManager.class.getSimpleName());
  private AdResp adResp;
  private Context context;
  private DViewAdModel dViewAdModel;
  private View handleView;
  private a handler;
  private Home home;
  private View homeView;
  private boolean isDataReady = false;
  private DService mDService;
  private GetDataListener mGetDataListener;
  private ViewGroup mHandleView = null;
  private ViewGroup mHandleViewGroup = null;
  private Dialog mHomeDialog;
  private SharedPreferences sp;
  
  public DViewManager(Context paramContext, DService paramDService)
  {
    mDService = paramDService;
    context = paramContext;
    adResp = new AdResp();
    dViewAdModel = new DViewAdModel(mDService);
    dViewAdModel.setReceiveAdDataListener(this);
    handler = new a();
    sp = context.getSharedPreferences("domob", 0);
    initView();
  }
  
  public DViewManager(Context paramContext, String paramString1, String paramString2)
  {
    this(paramContext, new DService(paramContext, paramString1, paramString2));
  }
  
  private RelativeLayout.LayoutParams getHandleViewLayoutParams(int paramInt)
  {
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    switch (paramInt)
    {
    default: 
      return localLayoutParams;
    case 1: 
      localLayoutParams.addRule(15, -1);
      localLayoutParams.addRule(14, -1);
      return localLayoutParams;
    }
    localLayoutParams.addRule(15, -1);
    localLayoutParams.addRule(9, -1);
    return localLayoutParams;
  }
  
  private void initHomeDialogView()
  {
    mHomeDialog = new Dialog(context, 16973840);
    mHomeDialog.setOnDismissListener(new DialogInterface.OnDismissListener()
    {
      public void onDismiss(DialogInterface paramAnonymousDialogInterface)
      {
        DViewManager.mLogger.debugLog("dialogView onDismiss");
        DViewManager.mLogger.debugLog("推广墙关闭");
        mDService.doUserActionReport(DService.ReportUserActionType.EXIT);
        if (mGetDataListener != null)
        {
          mGetDataListener.onCloseWall();
          DViewManager.mLogger.debugLog("onCloseWall");
        }
      }
    });
  }
  
  private void initView()
  {
    home = new Home(context, mDService);
    mLogger.debugLog("initHomeView: " + home.toString());
    home.setHomeViewListener(this);
    homeView = home.getHomeView();
    initHomeDialogView();
  }
  
  private boolean isDataExpired()
  {
    long l1 = System.currentTimeMillis();
    long l2 = sp.getLong("mTimeout", 86400000L);
    long l3 = sp.getLong("lastRequestNetTime", 0L);
    mLogger.debugLog(String.format("current:%d lastRequest:%d timeout:%d", new Object[] { Long.valueOf(l1), Long.valueOf(l3), Long.valueOf(l2) }));
    return (l2 != 0L) && (l1 - l3 >= l2);
  }
  
  private void loadData()
  {
    SharedPreferences.Editor localEditor = sp.edit();
    localEditor.putLong("lastRequestNetTime", System.currentTimeMillis());
    localEditor.commit();
    home.showProgressBar();
    mLogger.ptLog("Start to fetch data");
    dViewAdModel.requestAdData();
  }
  
  private void showDownloadDialog()
  {
    ((Activity)context).runOnUiThread(new Runnable()
    {
      private Dialog b;
      private DownloadView c;
      
      public void run()
      {
        if (((Activity)context).isFinishing()) {
          return;
        }
        b = new Dialog(context, DRes.initGetRes(context).getStyle("Dialog_Fullscreen"));
        c = new DownloadView(context, mDService, b, adResp.getControlInfo(), home.getDownloadManager());
        View localView = c.getDownloadView();
        if (localView != null)
        {
          b.setContentView(localView);
          b.show();
        }
        b.setOnDismissListener(new DialogInterface.OnDismissListener()
        {
          public void onDismiss(DialogInterface paramAnonymous2DialogInterface)
          {
            home.refreshDownloadingCount();
          }
        });
      }
    });
  }
  
  private void showHandleView()
  {
    ((Activity)context).runOnUiThread(new Runnable()
    {
      public void run()
      {
        if (handleView == null)
        {
          String str = sp.getString("mHandleUrl", "");
          DViewManager.mLogger.debugLog("handlerUrl:" + str);
          DViewManager.access$002(DViewManager.this, new HandleView(context, mDService, str).initHandleView());
        }
        if ((mHandleView != null) && (handleView.getParent() == null)) {
          mHandleView.addView(handleView);
        }
        for (;;)
        {
          handleView.setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramAnonymous2View)
            {
              DViewManager.mLogger.debugLog("点击把手");
              showWall();
            }
          });
          return;
          if ((mHandleViewGroup != null) && (handleView.getParent() == null)) {
            mHandleViewGroup.addView(handleView, DViewManager.this.getHandleViewLayoutParams(0));
          }
        }
      }
    });
  }
  
  private void showSearchDialog()
  {
    ((Activity)context).runOnUiThread(new Runnable()
    {
      private SearchView b;
      private Dialog c;
      
      public void run()
      {
        if (((Activity)context).isFinishing()) {}
        View localView;
        do
        {
          return;
          c = new Dialog(context, DRes.initGetRes(context).getStyle("Dialog_Fullscreen"));
          b = new SearchView(context, mDService, c, adResp.getControlInfo(), home.getDownloadManager());
          localView = b.getSearchView();
        } while (localView == null);
        c.setContentView(localView);
        c.show();
      }
    });
  }
  
  public void addView(ViewGroup paramViewGroup1, ViewGroup paramViewGroup2)
  {
    mLogger.debugLog("Start to add handle view");
    if ((DLayout.getLayoutInt(context, "l_handle") == -1) || (DLayout.getLayoutInt(context, "l_home") == -1))
    {
      mLogger.debugLog("尊敬的开发者：", "请参照文档添加res下资源");
      return;
    }
    mHandleViewGroup = paramViewGroup1;
    mHandleView = paramViewGroup2;
    showHandleView();
  }
  
  public void onBackButtonClicked()
  {
    mLogger.debugLog("backButtonClicked");
    if (mHomeDialog != null) {
      mHomeDialog.dismiss();
    }
  }
  
  public void onDownloadToolButtonClicked()
  {
    mLogger.debugLog("downloader clicked");
    showDownloadDialog();
  }
  
  public void onFailReceiveData(DService.ErrorCode paramErrorCode, String paramString)
  {
    home.getDownloadManager().clearTask();
    mLogger.errorLog("Fail to receive ad data");
    isDataReady = false;
    if (mGetDataListener != null) {
      mGetDataListener.onFailReceiveData(paramErrorCode, paramString);
    }
    handler.sendEmptyMessage(1);
  }
  
  public void onRefreshButtonClicked()
  {
    mLogger.debugLog("refreshButtonClicked");
    loadData();
  }
  
  public void onSearchButtonClicked()
  {
    mLogger.debugLog("searchButtonClicked");
    showSearchDialog();
  }
  
  public void onSuccessReceiveData(AdResp paramAdResp)
  {
    home.getDownloadManager().clearTask();
    mLogger.debugLog("Receive ad data");
    adResp = paramAdResp;
    isDataReady = true;
    SharedPreferences.Editor localEditor = sp.edit();
    localEditor.putLong("mTimeout", paramAdResp.getControlInfo().getTimeout());
    localEditor.commit();
    if ((paramAdResp.getControlInfo().isChangeEnterPic()) && (paramAdResp.getControlInfo().getEnterPicURL() != null))
    {
      localEditor.putString("mHandleUrl", paramAdResp.getControlInfo().getEnterPicURL());
      localEditor.commit();
    }
    for (;;)
    {
      if (mGetDataListener != null) {
        mGetDataListener.onSuccessReceiveData(paramAdResp.getControlInfo().getNumberOfNewAd());
      }
      mLogger.ptLog("Fetch data finish");
      handler.sendEmptyMessage(0);
      return;
      localEditor.putString("mHandleUrl", "");
      localEditor.commit();
    }
  }
  
  public void preLoad()
  {
    mLogger.debugLog("Start to preLoad");
    loadData();
  }
  
  public void setAddViewListener(GetDataListener paramGetDataListener)
  {
    mGetDataListener = paramGetDataListener;
  }
  
  public void showWall()
  {
    mLogger.debugLog("Start to show wall");
    mHomeDialog.setContentView(homeView);
    mHomeDialog.show();
    mDService.doUserActionReport(DService.ReportUserActionType.ENTRY);
    if (home.isShowEWallEntry())
    {
      mLogger.debugLog("Send report: E_ENTRY_SHOW");
      mDService.doEWallReport(DService.EWallReportType.E_ENTRY_SHOW);
    }
    if ((!isDataReady) || (isDataExpired()))
    {
      mLogger.debugLog("Need to request new data");
      loadData();
      return;
    }
    mLogger.debugLog("Data is ready and not expired");
  }
  
  public static abstract interface GetDataListener
  {
    public abstract void onCloseWall();
    
    public abstract void onFailReceiveData(DService.ErrorCode paramErrorCode, String paramString);
    
    public abstract void onSuccessReceiveData(int paramInt);
  }
  
  class a
    extends Handler
  {
    a() {}
    
    public void handleMessage(Message paramMessage)
    {
      switch (what)
      {
      default: 
        return;
      case 0: 
        home.refreshAd(adResp);
        return;
      }
      home.showErrorMSG("网络链接错误，点击看看");
    }
  }
}
