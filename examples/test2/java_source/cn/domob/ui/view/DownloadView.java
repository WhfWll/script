package cn.domob.ui.view;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnChildClickListener;
import android.widget.ExpandableListView.OnGroupClickListener;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.dm.download.DownLoadManager;
import cn.dm.download.bean.DownloadAppInfo;
import cn.domob.ui.adapter.DownloadManagerListAdapter;
import cn.domob.ui.item.AppListItem;
import cn.domob.ui.item.AppListItem.AppItemStatusChangeListener;
import cn.domob.ui.item.DownLoadListItem;
import cn.domob.ui.item.DownLoadListItem.DownloadItemStatusChangeListener;
import cn.domob.ui.main.Constants.DownloadStatus;
import cn.domob.ui.main.Logger;
import cn.domob.ui.utility.DId;
import cn.domob.ui.utility.DLayout;
import cn.domob.wall.core.DService;
import cn.domob.wall.core.DService.ErrorCode;
import cn.domob.wall.core.DService.ReceiveDetailsDataListener;
import cn.domob.wall.core.bean.AdInfo;
import cn.domob.wall.core.bean.ControlInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class DownloadView
  implements AppListItem.AppItemStatusChangeListener, DownLoadListItem.DownloadItemStatusChangeListener
{
  public static final int DM_INSTALLSUCCESS = 1;
  public static final int DM_REFRESHLIST = 0;
  private static final String DownloadType1 = "下载中";
  private static final String DownloadType2 = "已下载";
  public static final int Downloaded = 2;
  public static final int Downloading = 1;
  private static Logger mLogger = new Logger(DownloadView.class.getSimpleName());
  private DownloadManagerListAdapter adapter;
  private List<DownloadAppInfo> appInfoList;
  private ArrayList<List<DownLoadListItem>> childList;
  int[] childPos2D = new int[0];
  private List<DownLoadListItem> downloadedItemList;
  private List<DownLoadListItem> downloadingItemList;
  private ArrayList<String> groupList;
  Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (what)
      {
      default: 
        return;
      case 0: 
        adapter.notifyDataSetChanged();
        return;
      }
      paramAnonymousMessage = paramAnonymousMessage.getData();
      int i = paramAnonymousMessage.getInt("groupPosition");
      int j = paramAnonymousMessage.getInt("childPosition");
      if ((childList.size() != 0) && (((List)childList.get(i)).size() != 0)) {
        ((List)childList.get(i)).remove(j);
      }
      adapter.notifyDataSetChanged();
    }
  };
  private String listenerName = "DMItem";
  private Context mContext;
  private ControlInfo mControlInfo;
  private DService mDService;
  private Dialog mDialog;
  private DownLoadManager mDownLoadManager;
  View viewStub;
  private Map<int[], View> viewStubMap = new HashMap();
  View vsOperations;
  
  public DownloadView(Context paramContext, DService paramDService, Dialog paramDialog, ControlInfo paramControlInfo, DownLoadManager paramDownLoadManager)
  {
    mContext = paramContext;
    mDService = paramDService;
    mDialog = paramDialog;
    mDownLoadManager = paramDownLoadManager;
    appInfoList = mDownLoadManager.initAllDownloadAppInfoList();
    mControlInfo = paramControlInfo;
  }
  
  private boolean arrayEquals(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if (paramArrayOfInt1.length != paramArrayOfInt2.length) {
      return false;
    }
    int i = 0;
    boolean bool = false;
    for (;;)
    {
      if (i >= paramArrayOfInt1.length) {
        break label39;
      }
      if (paramArrayOfInt1[i] != paramArrayOfInt2[i]) {
        break;
      }
      bool = true;
      i += 1;
    }
    label39:
    return bool;
  }
  
  private void initGrop(List<DownloadAppInfo> paramList)
  {
    groupList = new ArrayList();
    childList = new ArrayList();
    if ((paramList != null) && (paramList.size() != 0))
    {
      downloadingItemList = new ArrayList();
      downloadedItemList = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        DownloadAppInfo localDownloadAppInfo = (DownloadAppInfo)paramList.next();
        if (5 != localDownloadAppInfo.getDownloadStatus()) {
          switch (localDownloadAppInfo.getDownloadStatus())
          {
          default: 
            downloadingItemList.add(new DownLoadListItem(mContext, this, handler, localDownloadAppInfo, mDownLoadManager, mDService));
            break;
          case 4: 
            downloadedItemList.add(new DownLoadListItem(mContext, this, handler, localDownloadAppInfo, mDownLoadManager, mDService));
            break;
          case 5: 
            downloadedItemList.add(new DownLoadListItem(mContext, this, handler, localDownloadAppInfo, mDownLoadManager, mDService));
          }
        }
      }
      if ((downloadingItemList.size() > 0) && (downloadedItemList.size() > 0))
      {
        groupList.add("下载中");
        groupList.add("已下载");
        childList.add(downloadingItemList);
        childList.add(downloadedItemList);
      }
      do
      {
        return;
        if ((downloadingItemList.size() == 0) && (downloadedItemList.size() > 0))
        {
          groupList.add("已下载");
          childList.add(downloadedItemList);
          return;
        }
      } while ((downloadingItemList.size() <= 0) || (downloadedItemList.size() != 0));
      childList.add(downloadingItemList);
      groupList.add("下载中");
      return;
    }
    mLogger.debugLog("***************", "无下载");
  }
  
  public View getDownloadView()
  {
    initGrop(appInfoList);
    LinearLayout localLinearLayout = (LinearLayout)LayoutInflater.from(mContext).inflate(DLayout.getLayoutInt(mContext, "l_download_main"), null);
    ((RelativeLayout)localLinearLayout.findViewById(DId.getIdInt(mContext, "rl_back"))).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        mDialog.dismiss();
      }
    });
    ExpandableListView localExpandableListView = (ExpandableListView)localLinearLayout.findViewById(DId.getIdInt(mContext, "expandableListView"));
    localExpandableListView.setEmptyView((TextView)localLinearLayout.findViewById(DId.getIdInt(mContext, "tv_empty")));
    adapter = new DownloadManagerListAdapter(mContext, mDService, groupList, childList, viewStubMap);
    localExpandableListView.setAdapter(adapter);
    int j = localExpandableListView.getCount();
    int i = 0;
    while (i < j)
    {
      localExpandableListView.expandGroup(i);
      i += 1;
    }
    localExpandableListView.setGroupIndicator(null);
    localExpandableListView.setOnGroupClickListener(new ExpandableListView.OnGroupClickListener()
    {
      public boolean onGroupClick(ExpandableListView paramAnonymousExpandableListView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        return true;
      }
    });
    localExpandableListView.setOnChildClickListener(new ExpandableListView.OnChildClickListener()
    {
      private RelativeLayout b;
      private RelativeLayout c;
      
      public boolean onChildClick(ExpandableListView paramAnonymousExpandableListView, View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, long paramAnonymousLong)
      {
        DownloadView.mLogger.debugLog("onChildClick: " + paramAnonymousInt1 + "," + paramAnonymousInt2);
        viewStub = null;
        vsOperations = paramAnonymousView.findViewById(DId.getIdInt(mContext, "ll_sliding_menu"));
        paramAnonymousView = new int[2];
        paramAnonymousView[0] = paramAnonymousInt1;
        paramAnonymousView[1] = paramAnonymousInt2;
        paramAnonymousExpandableListView = new int[2];
        paramAnonymousExpandableListView[0] = paramAnonymousInt1;
        paramAnonymousExpandableListView[1] = paramAnonymousInt2;
        DownloadView.a localA = new DownloadView.a(DownloadView.this, paramAnonymousInt1, paramAnonymousInt2);
        if (viewStubMap.size() == 0)
        {
          if (vsOperations.getVisibility() == 8)
          {
            vsOperations.setVisibility(0);
            b = ((RelativeLayout)vsOperations.findViewById(DId.getIdInt(mContext, "rl_menu_delete")));
            c = ((RelativeLayout)vsOperations.findViewById(DId.getIdInt(mContext, "rl_menu_detail")));
            b.setOnClickListener(localA);
            c.setOnClickListener(localA);
            viewStubMap.put(paramAnonymousView, vsOperations);
            return false;
          }
          vsOperations.setVisibility(8);
          return false;
        }
        Iterator localIterator = viewStubMap.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          paramAnonymousExpandableListView = (int[])localEntry.getKey();
          viewStub = ((View)localEntry.getValue());
        }
        if (DownloadView.this.arrayEquals(paramAnonymousExpandableListView, paramAnonymousView))
        {
          if (viewStub.getVisibility() == 8)
          {
            viewStub.setVisibility(0);
            return false;
          }
          viewStub.setVisibility(8);
          return false;
        }
        viewStub.setVisibility(8);
        viewStubMap.clear();
        if (vsOperations.getVisibility() == 8)
        {
          vsOperations.setVisibility(0);
          b = ((RelativeLayout)vsOperations.findViewById(DId.getIdInt(mContext, "rl_menu_delete")));
          b.setOnClickListener(localA);
          c = ((RelativeLayout)vsOperations.findViewById(DId.getIdInt(mContext, "rl_menu_detail")));
          c.setOnClickListener(localA);
          viewStubMap.put(paramAnonymousView, vsOperations);
          return false;
        }
        vsOperations.setVisibility(8);
        return false;
      }
    });
    return localLinearLayout;
  }
  
  public void onAppItemDownloadStatusChanged(Constants.DownloadStatus paramDownloadStatus)
  {
    mLogger.debugLog("onAppItemDownloadStatusChanged, do nothing");
  }
  
  public void onDMItemDownloadStatusChanged(Constants.DownloadStatus paramDownloadStatus)
  {
    mLogger.debugLog("onDMItemDownloadStatusChanged");
    handler.sendEmptyMessage(0);
  }
  
  private class a
    implements View.OnClickListener
  {
    private int b;
    private int c;
    private ProgressDialog d;
    
    public a(int paramInt1, int paramInt2)
    {
      b = paramInt1;
      c = paramInt2;
    }
    
    public void onClick(View paramView)
    {
      if (paramView.getId() == DId.getIdInt(mContext, "rl_menu_delete"))
      {
        paramView = new AlertDialog.Builder(mContext);
        paramView.setTitle("温馨提示");
        paramView.setIcon(17301659);
        paramView.setMessage("您确定要删除该条下载吗？");
        paramView.setPositiveButton("确定", new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            paramAnonymousDialogInterface.dismiss();
            DownloadView.mLogger.debugLog("confirmdialog clicked, groupPosition:" + DownloadView.a.a(DownloadView.a.this));
            if (DownloadView.a.a(DownloadView.a.this) == 1)
            {
              paramAnonymousDialogInterface = (DownLoadListItem)((List)childList.get(DownloadView.a.a(DownloadView.a.this))).remove(DownloadView.a.b(DownloadView.a.this));
              mDownLoadManager.excuteDelete(paramAnonymousDialogInterface.getDownloadAppInfo());
              downloadedItemList.remove(paramAnonymousDialogInterface);
              if (downloadedItemList.size() == 0)
              {
                groupList.remove(DownloadView.a.a(DownloadView.a.this));
                childList.remove(DownloadView.a.a(DownloadView.a.this));
              }
            }
            for (;;)
            {
              if (viewStub != null)
              {
                vsOperations.setVisibility(8);
                viewStub.setVisibility(8);
                viewStubMap.clear();
              }
              adapter.setGroupList(groupList);
              adapter.setChildList(childList);
              adapter.notifyDataSetChanged();
              return;
              if (DownloadView.a.a(DownloadView.a.this) == 0)
              {
                paramAnonymousDialogInterface = (DownLoadListItem)((List)childList.get(DownloadView.a.a(DownloadView.a.this))).remove(DownloadView.a.b(DownloadView.a.this));
                if (((String)adapter.getGroupList().get(DownloadView.a.a(DownloadView.a.this))).toString().equals("下载中"))
                {
                  mDownLoadManager.excuteDelete(paramAnonymousDialogInterface.getDownloadAppInfo());
                  downloadingItemList.remove(paramAnonymousDialogInterface);
                  if (downloadingItemList.size() == 0)
                  {
                    groupList.remove(DownloadView.a.a(DownloadView.a.this));
                    childList.remove(DownloadView.a.a(DownloadView.a.this));
                  }
                }
                else if (((String)adapter.getGroupList().get(DownloadView.a.a(DownloadView.a.this))).toString().equals("已下载"))
                {
                  mDownLoadManager.excuteDelete(paramAnonymousDialogInterface.getDownloadAppInfo());
                  downloadedItemList.remove(paramAnonymousDialogInterface);
                  if (downloadedItemList.size() == 0)
                  {
                    groupList.remove(DownloadView.a.a(DownloadView.a.this));
                    childList.remove(DownloadView.a.a(DownloadView.a.this));
                  }
                }
              }
            }
          }
        }).setNegativeButton("取消", null);
        paramView.show();
      }
      while (paramView.getId() != DId.getIdInt(mContext, "rl_menu_detail")) {
        return;
      }
      paramView = ((DownLoadListItem)((List)adapter.getChildList().get(b)).get(c)).getDownloadAppInfo();
      d = new ProgressDialog(mContext);
      d.setMessage("数据加载中...");
      d.show();
      mDService.setReceiveDetailsDataListener(new DService.ReceiveDetailsDataListener()
      {
        private Dialog b;
        
        public void onFailReceiveData(DService.ErrorCode paramAnonymousErrorCode, String paramAnonymousString)
        {
          DownloadView.a.c(DownloadView.a.this).dismiss();
          DownloadView.mLogger.errorLog("fail to receive detail data.");
        }
        
        public void onSuccessReceiveData(List<AdInfo> paramAnonymousList)
        {
          DownloadView.a.c(DownloadView.a.this).dismiss();
          Looper.prepare();
          if ((paramAnonymousList.size() > 0) && (paramAnonymousList != null))
          {
            paramAnonymousList = (AdInfo)paramAnonymousList.get(0);
            paramAnonymousList = new AppListItem(mContext, DownloadView.this, paramAnonymousList, mDService, mDownLoadManager, mControlInfo, listenerName);
            b = new Dialog(mContext);
            paramAnonymousList = paramAnonymousList.bindDetailsView(b);
            b.requestWindowFeature(1);
            b.setContentView(paramAnonymousList);
            b.show();
          }
          Looper.loop();
        }
      });
      paramView = Long.toString(paramView.getAppId());
      mDService.requestDetailsDataAsyn(paramView);
    }
  }
}
