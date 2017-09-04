package cn.domob.ui.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.domob.ui.adapter.AppListAdapter;
import cn.domob.ui.adapter.AppListAdapter.ListItemShowListener;
import cn.domob.ui.adapter.HomeGalleryAdapter;
import cn.domob.ui.item.AppListItem;
import cn.domob.ui.main.Logger;
import cn.domob.ui.utility.DDrawable;
import cn.domob.ui.utility.DId;
import cn.domob.ui.utility.DLayout;
import cn.domob.ui.utility.DUtil;
import cn.domob.wall.core.DService;
import cn.domob.wall.core.DService.ReportUserActionType;
import cn.domob.wall.core.bean.AdInfo;
import cn.domob.wall.core.bean.AdInfo.ClickActionType;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

public class AdWallListView
  extends ListView
  implements AbsListView.OnScrollListener
{
  private static Logger mLogger = new Logger(AdWallListView.class.getSimpleName());
  private final String MORE = "更多";
  private final String RETURNTOP = "点击返回顶部";
  private int SHOW_NUMBER_ONCE = 15;
  private AdWallListView mAdWallListView;
  private int mBannerIntervalTime = 0;
  List<AppListItem> mBannerList;
  private Context mContext;
  private DService mDService;
  private Dialog mDetailsDialog;
  private boolean mDisplayBanner = false;
  private TextView mFooterTextView;
  private View mFooterView;
  private HomeGalleryAdapter mGalleryAdapter;
  private int mGalleryPositon = 0;
  private DGallery mGalleryView;
  private View mHeaderView;
  List<AppListItem> mItemList;
  private int mLastItem;
  private AppListAdapter mListAdapter;
  private boolean mListAdapterSet = false;
  private LinearLayout mPointLinear;
  private a mTask;
  private Timer mTimer;
  private String viewTag = "";
  
  public AdWallListView(Context paramContext)
  {
    super(paramContext);
    mContext = paramContext;
    initListView();
  }
  
  public AdWallListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    mContext = paramContext;
    initListView();
  }
  
  public AdWallListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    mContext = paramContext;
    initListView();
  }
  
  private void changeHomePointView(int paramInt)
  {
    Object localObject2 = mPointLinear.getChildAt(mGalleryPositon);
    Object localObject1 = mPointLinear.getChildAt(paramInt);
    if ((localObject2 != null) && (localObject1 != null))
    {
      localObject2 = (ImageView)localObject2;
      localObject1 = (ImageView)localObject1;
      ((ImageView)localObject2).setBackgroundResource(DDrawable.getDrawableInt(mContext, "u_point_default"));
      ((ImageView)localObject1).setBackgroundResource(DDrawable.getDrawableInt(mContext, "u_point_select"));
      mGalleryPositon = paramInt;
    }
  }
  
  private void initHomeGalleryPointView()
  {
    mPointLinear.removeAllViews();
    int i = (int)DUtil.getScreenDensity(mContext);
    int j = (int)DUtil.getScreenDensity(mContext);
    int k = (int)DUtil.getScreenDensity(mContext) * 9;
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(i * 9, j * 9);
    leftMargin = k;
    rightMargin = k;
    i = 0;
    if (i < mBannerList.size())
    {
      ImageView localImageView = new ImageView(mContext);
      if (i == 0) {
        localImageView.setBackgroundResource(DDrawable.getDrawableInt(mContext, "u_point_select"));
      }
      for (;;)
      {
        localImageView.setLayoutParams(localLayoutParams);
        mPointLinear.addView(localImageView);
        i += 1;
        break;
        localImageView.setBackgroundResource(DDrawable.getDrawableInt(mContext, "u_point_default"));
      }
    }
  }
  
  private void processItemClick(AppListItem paramAppListItem)
  {
    AdInfo.ClickActionType localClickActionType = paramAppListItem.getAdInfo().getAdActionType();
    mDService.doClickWallItemReport(paramAppListItem.getAdInfo());
    switch (6.a[localClickActionType.ordinal()])
    {
    default: 
      return;
    case 1: 
    case 2: 
      mDService.onClickWallItem(paramAppListItem.getAdInfo());
      return;
    }
    showDetailsDialogView(paramAppListItem);
  }
  
  private void refreshBannerList(List<AppListItem> paramList, int paramInt)
  {
    mBannerList = paramList;
    if ((mGalleryView != null) && (mGalleryAdapter != null) && (mBannerList != null))
    {
      mGalleryView.setSelection(0);
      mGalleryAdapter.setBannerList(mBannerList);
      mGalleryAdapter.notifyDataSetChanged();
      setAutoScroll(paramInt);
      initHomeGalleryPointView();
    }
  }
  
  private void refreshItemList(List<AppListItem> paramList)
  {
    mItemList = paramList;
    if (!mListAdapterSet)
    {
      setAdapter(mListAdapter);
      mListAdapterSet = true;
    }
    if ((mListAdapter != null) && (mItemList != null))
    {
      mListAdapter.setItemList(mItemList, SHOW_NUMBER_ONCE);
      mListAdapter.notifyDataSetChanged();
    }
    mFooterTextView.setText("更多");
    if ((getFooterViewsCount() > 0) && (mItemList.size() < 8)) {
      removeFooterView(mFooterView);
    }
  }
  
  private void sendListImpReports(int paramInt1, int paramInt2)
  {
    mLogger.debugLog("Start to send imp reports,start:" + paramInt1 + ", len:" + paramInt2 + " tag:" + viewTag);
    ArrayList localArrayList = new ArrayList();
    int i = paramInt1;
    while ((i < paramInt1 + paramInt2) && (i < mItemList.size()))
    {
      AdInfo localAdInfo = ((AppListItem)mItemList.get(i)).getAdInfo();
      localAdInfo.setAdActualPosition(i);
      localArrayList.add(localAdInfo);
      i += 1;
    }
    mDService.doImpReports(localArrayList);
  }
  
  private void setAutoScroll(int paramInt)
  {
    mLogger.debugLog("autoscroll:" + paramInt);
    mBannerIntervalTime = paramInt;
    if ((mBannerIntervalTime <= 5) && (mBannerIntervalTime > 0)) {
      mBannerIntervalTime = 5;
    }
    if (mBannerIntervalTime > 0)
    {
      if (mTimer != null) {
        mTimer.cancel();
      }
      mTimer = new Timer();
      mTask = new a(null);
      mTimer.scheduleAtFixedRate(mTask, 0L, mBannerIntervalTime * 1000);
    }
  }
  
  private void setDisplayBanner(boolean paramBoolean)
  {
    mLogger.debugLog("setDisplayBanner: " + paramBoolean);
    mLogger.debugLog("current version:" + Build.VERSION.SDK_INT);
    if ((mListAdapterSet) && (Build.VERSION.SDK_INT <= 10))
    {
      mLogger.debugLog("list adapter is already set, do not add/removew banner view dynamically");
      return;
    }
    mDisplayBanner = paramBoolean;
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        if (getHeaderViewsCount() == 0) {
          addHeaderView(mHeaderView);
        }
        mLogger.debugLog("header count:" + getHeaderViewsCount());
        return;
      }
      catch (Exception localException)
      {
        mLogger.errorLog("Error occurs when adding/removing views");
        mLogger.printStackTrace(localException);
        return;
      }
      removeHeaderView(mHeaderView);
    }
  }
  
  private void setShowNumber(int paramInt)
  {
    if (paramInt > 0) {
      SHOW_NUMBER_ONCE = paramInt;
    }
  }
  
  private void showDetailsDialogView(AppListItem paramAppListItem)
  {
    mDetailsDialog = new Dialog(mContext);
    paramAppListItem = paramAppListItem.bindDetailsView(mDetailsDialog);
    mDetailsDialog.requestWindowFeature(1);
    mDetailsDialog.setContentView(paramAppListItem);
    mDetailsDialog.show();
  }
  
  public DService getDService()
  {
    return mDService;
  }
  
  public HomeGalleryAdapter getGalleryAdapter()
  {
    return mGalleryAdapter;
  }
  
  public AppListAdapter getListAdapter()
  {
    return mListAdapter;
  }
  
  public String getViewTag()
  {
    return viewTag;
  }
  
  public void initListView()
  {
    mLogger.debugLog("initListView");
    mAdWallListView = this;
    mFooterView = LayoutInflater.from(mContext).inflate(DLayout.getLayoutInt(mContext, "l_home_list_footer"), null);
    mFooterTextView = ((TextView)mFooterView.findViewById(DId.getIdInt(mContext, "more_textview")));
    mFooterTextView.setText("更多");
    addFooterView(mFooterView);
    setOnScrollListener(this);
    setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousInt -= getHeaderViewsCount();
        AdWallListView.mLogger.debugLog("list item click, pos:" + paramAnonymousInt);
        if ((mItemList != null) && (paramAnonymousInt >= 0) && (paramAnonymousInt < mItemList.size()))
        {
          ((AppListItem)mItemList.get(paramAnonymousInt)).getAdInfo().setAdActualPosition(paramAnonymousInt);
          AdWallListView.mLogger.debugLog("Start to display detail view: " + paramAnonymousInt);
          AdWallListView.this.processItemClick((AppListItem)mItemList.get(paramAnonymousInt));
        }
      }
    });
    mHeaderView = ((RelativeLayout)LayoutInflater.from(mContext).inflate(DLayout.getLayoutInt(mContext, "l_home_banner"), null));
    mGalleryView = ((DGallery)mHeaderView.findViewById(DId.getIdInt(mContext, "gallery1")));
    mPointLinear = ((LinearLayout)mHeaderView.findViewById(DId.getIdInt(mContext, "gallery_point_linear")));
    mGalleryAdapter = new HomeGalleryAdapter(mContext);
    mGalleryView.setAdapter(mGalleryAdapter);
    mGalleryView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (mBannerList != null)
        {
          paramAnonymousInt %= mBannerList.size();
          AdWallListView.mLogger.debugLog("gallery item clicked: " + paramAnonymousInt);
          ((AppListItem)mBannerList.get(paramAnonymousInt)).getAdInfo().setAdActualPosition(paramAnonymousInt);
          AdWallListView.this.processItemClick((AppListItem)mBannerList.get(paramAnonymousInt));
        }
      }
    });
    mGalleryView.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
    {
      public void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        AdWallListView.mLogger.debugLog("onItemSelected:" + paramAnonymousInt);
        if ((mBannerList != null) && (paramAnonymousInt < mBannerList.size()))
        {
          paramAnonymousAdapterView = new ArrayList();
          paramAnonymousAdapterView.add(((AppListItem)mBannerList.get(paramAnonymousInt)).getAdInfo());
          mDService.doImpReports(paramAnonymousAdapterView);
          AdWallListView.mLogger.debugLog("Start to send imp reports：" + paramAnonymousInt);
        }
        AdWallListView.this.changeHomePointView(paramAnonymousInt % mBannerList.size());
      }
      
      public void onNothingSelected(AdapterView<?> paramAnonymousAdapterView)
      {
        AdWallListView.mLogger.debugLog("onNothingSelected");
      }
    });
    mListAdapter = new AppListAdapter(mContext);
    mListAdapter.setListItemShowListener(new AppListAdapter.ListItemShowListener()
    {
      public void onListItemStartToShow()
      {
        AdWallListView.this.sendListImpReports(0, mListAdapter.getCount());
      }
    });
  }
  
  public boolean isDisplayBanner()
  {
    return mDisplayBanner;
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    mLastItem = (paramInt1 + paramInt2 - 1 - getHeaderViewsCount());
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    mLogger.debugLog("onScrollStateChanged:" + paramInt);
    mLogger.debugLog("lastItem:" + mLastItem);
    if ((mLastItem == mListAdapter.getCount()) && (paramInt == 0))
    {
      if (mListAdapter.getCount() + SHOW_NUMBER_ONCE < mListAdapter.getItemSize()) {
        break label201;
      }
      mListAdapter.setCount(mListAdapter.getItemSize());
      mFooterTextView.setText("点击返回顶部");
      if ((mDService != null) && (mLastItem < mListAdapter.getCount()))
      {
        mLogger.debugLog("send PGDN report");
        mDService.doUserActionReport(DService.ReportUserActionType.PGDN);
        sendListImpReports(mLastItem, mListAdapter.getCount() - mLastItem);
      }
      mFooterView.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          setSelection(0);
        }
      });
    }
    for (;;)
    {
      mListAdapter.notifyDataSetChanged();
      return;
      label201:
      mFooterTextView.setText("更多");
      paramInt = mListAdapter.getCount();
      mListAdapter.setCount(paramInt + SHOW_NUMBER_ONCE);
      if (mDService != null)
      {
        mLogger.debugLog("send PGDN report");
        mDService.doUserActionReport(DService.ReportUserActionType.PGDN);
        sendListImpReports(mLastItem, mListAdapter.getCount() - mLastItem);
      }
    }
  }
  
  public void refreshItemListWithBanner(List<AppListItem> paramList1, int paramInt1, List<AppListItem> paramList2, int paramInt2)
  {
    setShowNumber(paramInt1);
    setDisplayBanner(true);
    refreshItemList(paramList1);
    refreshBannerList(paramList2, paramInt2);
  }
  
  public void refreshItemListWithNoBanner(List<AppListItem> paramList, int paramInt)
  {
    setShowNumber(paramInt);
    setDisplayBanner(false);
    refreshItemList(paramList);
  }
  
  public void setDService(DService paramDService)
  {
    mDService = paramDService;
  }
  
  public void setViewTag(String paramString)
  {
    viewTag = paramString;
  }
  
  private class a
    extends TimerTask
  {
    private a() {}
    
    public void run()
    {
      if ((mGalleryView != null) && (mGalleryView.hasWindowFocus()) && (mAdWallListView.getFirstVisiblePosition() == 0) && (!mGalleryView.isOnGalleryTouch()))
      {
        AdWallListView.mLogger.debugLog("start auto scroll: " + toString());
        ((Activity)mContext).runOnUiThread(new Runnable()
        {
          public void run()
          {
            mGalleryView.onKeyDown(22, null);
          }
        });
      }
    }
  }
}
