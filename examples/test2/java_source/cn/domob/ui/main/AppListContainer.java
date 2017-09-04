package cn.domob.ui.main;

import android.content.Context;
import cn.dm.download.DownLoadManager;
import cn.domob.ui.item.AppListItem;
import cn.domob.ui.item.AppListItem.AppItemStatusChangeListener;
import cn.domob.wall.core.DService;
import cn.domob.wall.core.bean.AdInfo;
import cn.domob.wall.core.bean.AdInfo.AdType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class AppListContainer
{
  private static Logger mLogger = new Logger(AppListContainer.class.getSimpleName());
  private DownLoadManager dlm;
  private AdResp mAdResp;
  private List<AppListItem> mAllList = new ArrayList();
  private List<AppListItem> mAppList = new ArrayList();
  private List<AppListItem> mBannerList = new ArrayList();
  private Context mContext;
  private DService mDService;
  private List<AppListItem> mGameList = new ArrayList();
  private AppListItem.AppItemStatusChangeListener mListener;
  private String mListenerName = "APPItem";
  
  public AppListContainer(Context paramContext, DService paramDService, AppListItem.AppItemStatusChangeListener paramAppItemStatusChangeListener, DownLoadManager paramDownLoadManager)
  {
    mContext = paramContext;
    mDService = paramDService;
    mListener = paramAppItemStatusChangeListener;
    dlm = paramDownLoadManager;
  }
  
  public void clearAll()
  {
    mAllList.clear();
    mGameList.clear();
    mAppList.clear();
    mBannerList.clear();
  }
  
  public void doRefresh(AdResp paramAdResp)
  {
    mLogger.ptLog("Start convert adresp to applistitem");
    mAdResp = paramAdResp;
    clearAll();
    if (mAdResp != null)
    {
      paramAdResp = mAdResp.getItemList().iterator();
      Object localObject;
      while (paramAdResp.hasNext())
      {
        localObject = (AdInfo)paramAdResp.next();
        AppListItem localAppListItem = new AppListItem(mContext, mListener, (AdInfo)localObject, mDService, dlm, mAdResp.getControlInfo(), mListenerName);
        mAllList.add(localAppListItem);
        if (((AdInfo)localObject).getAdType().equals(AdInfo.AdType.GAME)) {
          mGameList.add(localAppListItem);
        } else if (((AdInfo)localObject).getAdType().equals(AdInfo.AdType.APPLICATION)) {
          mAppList.add(localAppListItem);
        }
      }
      paramAdResp = mAdResp.getBannerList().iterator();
      while (paramAdResp.hasNext())
      {
        localObject = (AdInfo)paramAdResp.next();
        localObject = new AppListItem(mContext, mListener, (AdInfo)localObject, mDService, dlm, mAdResp.getControlInfo(), mListenerName);
        mBannerList.add(localObject);
      }
    }
    mLogger.ptLog("Finish convert adresp to applistitem");
  }
  
  public List<AppListItem> getAllList()
  {
    return mAllList;
  }
  
  public List<AppListItem> getAppList()
  {
    return mAppList;
  }
  
  public List<AppListItem> getBannerList()
  {
    return mBannerList;
  }
  
  public List<AppListItem> getGameList()
  {
    return mGameList;
  }
  
  public void setAllList(List<AppListItem> paramList)
  {
    mAllList = paramList;
  }
  
  public void setAppList(List<AppListItem> paramList)
  {
    mAppList = paramList;
  }
  
  public void setBannerList(List<AppListItem> paramList)
  {
    mBannerList = paramList;
  }
  
  public void setGameList(List<AppListItem> paramList)
  {
    mGameList = paramList;
  }
}
