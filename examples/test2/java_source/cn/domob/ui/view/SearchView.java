package cn.domob.ui.view;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import cn.dm.download.DownLoadManager;
import cn.dm.download.bean.DownloadAppInfo;
import cn.domob.ui.adapter.SearchResultListAdapter;
import cn.domob.ui.item.AppListItem;
import cn.domob.ui.item.AppListItem.AppItemStatusChangeListener;
import cn.domob.ui.item.SearchListItem;
import cn.domob.ui.item.SearchListItem.SearchItemStatusChangeListener;
import cn.domob.ui.main.Constants.DownloadStatus;
import cn.domob.ui.main.Logger;
import cn.domob.ui.utility.DDrawable;
import cn.domob.ui.utility.DId;
import cn.domob.ui.utility.DLayout;
import cn.domob.ui.utility.DRes;
import cn.domob.wall.core.DService;
import cn.domob.wall.core.DService.ErrorCode;
import cn.domob.wall.core.DService.ReceiveDetailsDataListener;
import cn.domob.wall.core.DService.ReceiveHotSearchDataListener;
import cn.domob.wall.core.DService.ReceiveSearchDataListener;
import cn.domob.wall.core.bean.AdInfo;
import cn.domob.wall.core.bean.ControlInfo;
import java.util.ArrayList;
import java.util.List;

public class SearchView
  implements AppListItem.AppItemStatusChangeListener, SearchListItem.SearchItemStatusChangeListener
{
  protected static final int DETAILPAGETYPE = 1;
  protected static final int REFRESH_LIST = 0;
  private static final int SHOW_HOT_SEARCH = 2;
  private static final int SHOW_NET_ERROR = 5;
  protected static final int SHOW_NO_RECOMMAND_RESULT = 6;
  private static final int SHOW_NO_SEARCH_RESULT = 4;
  private static final int SHOW_PROGRESS = 1;
  private static final int SHOW_SEARCH_RESULT = 3;
  private static Logger mLogger = new Logger(SearchView.class.getSimpleName());
  private DownLoadManager dlm;
  private List<String> hotString;
  private List<SearchListItem> listItems;
  private String listenerName = "SearchItem";
  private Context mContext;
  private ControlInfo mControlInfo;
  private DService mDService;
  private ClearEditText mEtSearch;
  private Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      super.handleMessage(paramAnonymousMessage);
      switch (what)
      {
      default: 
        return;
      case 1: 
        SearchView.this.changeSurface(1);
        return;
      case 2: 
        SearchView.this.changeSurface(2);
        return;
      case 3: 
        SearchView.this.changeSurface(3);
        return;
      case 4: 
        SearchView.this.changeSurface(4);
        return;
      case 5: 
        SearchView.this.changeSurface(5);
        return;
      case 6: 
        SearchView.this.changeSurface(6);
        return;
      }
      resultListAdapter.notifyDataSetChanged();
    }
  };
  private RelativeLayout mIvBack;
  private String mKeyWord;
  private LinearLayout mLLResult;
  private LinearLayout mLlHotSearch;
  private ListView mLvResult;
  private ListView mLvSearch;
  private LinearLayout mNoSearchResult;
  private TextView mNoSearchResultInfo;
  private RelativeLayout mRlNetError;
  private RelativeLayout mRlProgress;
  private Dialog mSearchDialog;
  private TextView mTvRecommend;
  private ProgressDialog pb;
  private SearchResultListAdapter resultListAdapter;
  Handler showHotStringHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      mLvSearch.setAdapter(new SearchView.a(SearchView.this, hotString));
    }
  };
  EditextChangeZeroListener textChangeZeroListener = new EditextChangeZeroListener()
  {
    public void textChange()
    {
      SearchView.this.changeSurface(2);
    }
  };
  
  public SearchView(Context paramContext, DService paramDService, Dialog paramDialog, ControlInfo paramControlInfo, DownLoadManager paramDownLoadManager)
  {
    mContext = paramContext;
    mDService = paramDService;
    mSearchDialog = paramDialog;
    listItems = new ArrayList();
    dlm = paramDownLoadManager;
    mControlInfo = paramControlInfo;
  }
  
  private void changeSurface(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 1: 
      mRlProgress.setVisibility(0);
      mRlNetError.setVisibility(8);
      mLlHotSearch.setVisibility(8);
      mNoSearchResult.setVisibility(8);
      mLvResult.setVisibility(8);
      return;
    case 2: 
      mRlProgress.setVisibility(8);
      mRlNetError.setVisibility(8);
      mLlHotSearch.setVisibility(0);
      mNoSearchResult.setVisibility(8);
      mLvResult.setVisibility(8);
      return;
    case 3: 
      mRlProgress.setVisibility(8);
      mRlNetError.setVisibility(8);
      mLlHotSearch.setVisibility(8);
      mNoSearchResult.setVisibility(8);
      mLLResult.setVisibility(0);
      mLvResult.setVisibility(0);
      return;
    case 4: 
      mRlProgress.setVisibility(8);
      mRlNetError.setVisibility(8);
      mLlHotSearch.setVisibility(8);
      mLLResult.setVisibility(0);
      mNoSearchResult.setVisibility(0);
      mNoSearchResultInfo.setText("呃，没有找到和" + mKeyWord + "相关的应用");
      mLvResult.setVisibility(0);
      mTvRecommend.setVisibility(0);
      return;
    case 6: 
      mRlProgress.setVisibility(8);
      mRlNetError.setVisibility(8);
      mLlHotSearch.setVisibility(8);
      mLLResult.setVisibility(0);
      mNoSearchResult.setVisibility(0);
      mNoSearchResultInfo.setText("呃，没有找到和" + mKeyWord + "相关的应用");
      mTvRecommend.setVisibility(8);
      mLvResult.setVisibility(8);
      return;
    }
    mRlProgress.setVisibility(8);
    mRlNetError.setVisibility(0);
    mLlHotSearch.setVisibility(8);
    mNoSearchResult.setVisibility(8);
    mLvResult.setVisibility(8);
  }
  
  private int checkNetStatus(Context paramContext)
  {
    paramContext = (ConnectivityManager)paramContext.getApplicationContext().getSystemService("connectivity");
    if (paramContext != null) {}
    for (;;)
    {
      try
      {
        if (paramContext.getActiveNetworkInfo() == null) {
          return 0;
        }
        int i = paramContext.getActiveNetworkInfo().getType();
        if (1 == i)
        {
          i = 1;
          return i;
        }
        if (i == 0) {
          i = 2;
        } else {
          i = 0;
        }
      }
      catch (Exception paramContext)
      {
        return 0;
      }
    }
  }
  
  private void executeSearch()
  {
    mKeyWord = mEtSearch.getText().toString().trim();
    mDService.setReceiveSearchDataListener(new DService.ReceiveSearchDataListener()
    {
      public void onFailReceiveData(DService.ErrorCode paramAnonymousErrorCode, String paramAnonymousString)
      {
        mHandler.sendEmptyMessage(5);
      }
      
      public void onSuccessReceiveData(List<AdInfo> paramAnonymousList1, List<AdInfo> paramAnonymousList2)
      {
        
        if (listItems != null) {
          listItems.clear();
        }
        int i;
        if ((paramAnonymousList1 != null) && (paramAnonymousList1.size() != 0))
        {
          i = 0;
          while (i < paramAnonymousList1.size())
          {
            paramAnonymousList2 = (AdInfo)paramAnonymousList1.get(i);
            paramAnonymousList2 = new SearchListItem(mContext, SearchView.this, paramAnonymousList2, mDService, dlm, mControlInfo);
            listItems.add(paramAnonymousList2);
            i += 1;
          }
          if (resultListAdapter == null)
          {
            SearchView.access$102(SearchView.this, new SearchResultListAdapter(mContext, mDService, listItems));
            mLvResult.setAdapter(resultListAdapter);
          }
          mHandler.sendEmptyMessage(3);
        }
        for (;;)
        {
          Looper.loop();
          return;
          if ((paramAnonymousList2 != null) && (paramAnonymousList2.size() != 0))
          {
            i = 0;
            while (i < paramAnonymousList2.size())
            {
              paramAnonymousList1 = (AdInfo)paramAnonymousList2.get(i);
              paramAnonymousList1 = new SearchListItem(mContext, SearchView.this, paramAnonymousList1, mDService, dlm, mControlInfo);
              listItems.add(paramAnonymousList1);
              i += 1;
            }
            if (resultListAdapter == null)
            {
              SearchView.access$102(SearchView.this, new SearchResultListAdapter(mContext, mDService, listItems));
              mLvResult.setAdapter(resultListAdapter);
            }
            mHandler.sendEmptyMessage(4);
          }
          else
          {
            mHandler.sendEmptyMessage(6);
          }
        }
      }
    });
    if (!"".equals(mKeyWord))
    {
      hideSoftInput();
      changeSurface(1);
      listItems.clear();
      mDService.requestSearchDataAsyn(mKeyWord);
      return;
    }
    Toast.makeText(mContext, "输入的关键字不能为空！", 0).show();
  }
  
  private void hideSoftInput()
  {
    ((InputMethodManager)mContext.getSystemService("input_method")).hideSoftInputFromWindow(mEtSearch.getWindowToken(), 0);
  }
  
  private void initData()
  {
    mDService.setReceiveHotSearchDataListener(new DService.ReceiveHotSearchDataListener()
    {
      public void onFailReceiveData(DService.ErrorCode paramAnonymousErrorCode, String paramAnonymousString)
      {
        mHandler.sendEmptyMessage(5);
      }
      
      public void onSuccessReceiveData(List<String> paramAnonymousList)
      {
        SearchView.access$802(SearchView.this, paramAnonymousList);
        showHotStringHandler.sendEmptyMessage(0);
        mHandler.sendEmptyMessage(2);
      }
    });
    mDService.requestHotSearchDataAsyn();
    mHandler.sendEmptyMessage(1);
  }
  
  public View getSearchView()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)LayoutInflater.from(mContext).inflate(DLayout.getLayoutInt(mContext, "l_search_main"), null);
    mEtSearch = ((ClearEditText)localRelativeLayout.findViewById(DId.getIdInt(mContext, "et_search")));
    Drawable localDrawable = mContext.getResources().getDrawable(DDrawable.getDrawableInt(mContext, "u_search_icon_left"));
    localDrawable.setBounds(-7, 3, localDrawable.getMinimumWidth() - 7, localDrawable.getMinimumHeight() + 3);
    mEtSearch.setCompoundDrawables(localDrawable, null, null, null);
    mEtSearch.setOnEditextChangeZeroListener(textChangeZeroListener);
    mLlHotSearch = ((LinearLayout)localRelativeLayout.findViewById(DId.getIdInt(mContext, "ll_hotsearch_list")));
    mLvSearch = ((ListView)localRelativeLayout.findViewById(DId.getIdInt(mContext, "lv_hotsearch_list")));
    mTvRecommend = ((TextView)localRelativeLayout.findViewById(DId.getIdInt(mContext, "tv_recomend")));
    mRlProgress = ((RelativeLayout)localRelativeLayout.findViewById(DId.getIdInt(mContext, "rl_progress")));
    mRlNetError = ((RelativeLayout)localRelativeLayout.findViewById(DId.getIdInt(mContext, "rl_net_error")));
    mRlNetError.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (SearchView.this.checkNetStatus(mContext) == 0)
        {
          Toast.makeText(mContext, "网络异常，请检查网络设置！", 0).show();
          return;
        }
        SearchView.this.executeSearch();
      }
    });
    mLLResult = ((LinearLayout)localRelativeLayout.findViewById(DId.getIdInt(mContext, "ll_search_result")));
    mLvResult = ((ListView)localRelativeLayout.findViewById(DId.getIdInt(mContext, "lv_search_result_list")));
    mLvResult.setOnItemClickListener(new b(null));
    mNoSearchResult = ((LinearLayout)localRelativeLayout.findViewById(DId.getIdInt(mContext, "ll_nosearch_result")));
    mNoSearchResultInfo = ((TextView)localRelativeLayout.findViewById(DId.getIdInt(mContext, "tv_noresult_info")));
    mIvBack = ((RelativeLayout)localRelativeLayout.findViewById(DId.getIdInt(mContext, "rl_back")));
    mIvBack.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        mSearchDialog.dismiss();
      }
    });
    ((Button)localRelativeLayout.findViewById(DId.getIdInt(mContext, "btn_search"))).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        SearchView.this.executeSearch();
      }
    });
    mLvSearch.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        SearchView.this.hideSoftInput();
        mEtSearch.setText((CharSequence)hotString.get(paramAnonymousInt));
        SearchView.this.changeSurface(1);
        SearchView.this.executeSearch();
      }
    });
    initData();
    return localRelativeLayout;
  }
  
  public void onAppItemDownloadStatusChanged(Constants.DownloadStatus paramDownloadStatus)
  {
    mLogger.debugLog("onAppItemDownloadStatusChanged, do nothing");
  }
  
  public void onSearchItemDownloadStatusChanged(Constants.DownloadStatus paramDownloadStatus)
  {
    paramDownloadStatus = new Message();
    obj = Boolean.valueOf(true);
    what = 0;
    mHandler.sendMessage(paramDownloadStatus);
  }
  
  public static abstract interface EditextChangeZeroListener
  {
    public abstract void textChange();
  }
  
  private class a
    extends BaseAdapter
  {
    private List<String> b;
    
    public a()
    {
      Object localObject;
      b = localObject;
    }
    
    public int getCount()
    {
      return b.size();
    }
    
    public Object getItem(int paramInt)
    {
      return b.get(paramInt);
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      paramView = (LinearLayout)LayoutInflater.from(mContext).inflate(DLayout.getLayoutInt(mContext, "l_hotsearch_item"), null);
      paramViewGroup = (TextView)paramView.findViewById(DId.getIdInt(mContext, "tv_arrow_position"));
      TextView localTextView = (TextView)paramView.findViewById(DId.getIdInt(mContext, "tv_hotsearch_item_name"));
      paramViewGroup.setText(paramInt + 1 + "");
      if (paramInt > 2) {
        paramViewGroup.setBackgroundResource(DRes.initGetRes(mContext).getDrawable("u_arrow_gray"));
      }
      localTextView.setText((CharSequence)b.get(paramInt));
      return paramView;
    }
  }
  
  private class b
    implements AdapterView.OnItemClickListener
  {
    private b() {}
    
    public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      paramAdapterView = (SearchListItem)resultListAdapter.getItem(paramInt);
      paramView = paramAdapterView.getDownloadAppInfo();
      paramAdapterView.getmAdInfo().setAdActualPosition(paramInt);
      mDService.doClickWallItemReport(paramAdapterView.getmAdInfo());
      SearchView.access$1102(SearchView.this, new ProgressDialog(mContext));
      pb.setMessage("数据加载中...");
      pb.show();
      mDService.setReceiveDetailsDataListener(new DService.ReceiveDetailsDataListener()
      {
        private Dialog b;
        
        public void onFailReceiveData(DService.ErrorCode paramAnonymousErrorCode, String paramAnonymousString)
        {
          pb.dismiss();
          SearchView.mLogger.debugLog("onFailReceiveData-->", "errorContent" + paramAnonymousString);
          Looper.prepare();
          Toast.makeText(mContext, "网络不是太给力哦...", 0).show();
          Looper.loop();
        }
        
        public void onSuccessReceiveData(List<AdInfo> paramAnonymousList)
        {
          pb.dismiss();
          Looper.prepare();
          if ((paramAnonymousList.size() > 0) && (paramAnonymousList != null))
          {
            paramAnonymousList = (AdInfo)paramAnonymousList.get(0);
            paramAnonymousList = new AppListItem(mContext, SearchView.this, paramAnonymousList, mDService, dlm, mControlInfo, listenerName);
            b = new Dialog(mContext);
            paramAnonymousList = paramAnonymousList.bindDetailsView(b);
            b.requestWindowFeature(1);
            b.setContentView(paramAnonymousList);
            b.show();
          }
          Looper.loop();
        }
      });
      paramAdapterView = Long.toString(paramView.getAppId());
      mDService.requestDetailsDataAsyn(paramAdapterView);
    }
  }
}
