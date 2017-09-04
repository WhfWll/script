package cn.domob.ui.main;

import cn.domob.wall.core.bean.AdExtend;
import cn.domob.wall.core.bean.AdInfo;
import cn.domob.wall.core.bean.AdInfo.AdType;
import cn.domob.wall.core.bean.ControlInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class AdResp
{
  private List<AdExtend> mAdExtend;
  private List<AdInfo> mAppList = new ArrayList();
  private List<AdInfo> mBannerList;
  private ControlInfo mControlInfo;
  private List<AdInfo> mGameList = new ArrayList();
  private List<AdInfo> mItemList;
  
  public AdResp()
  {
    mControlInfo = new ControlInfo();
    mBannerList = new ArrayList();
    mItemList = new ArrayList();
    mAdExtend = new ArrayList();
  }
  
  public AdResp(List<AdInfo> paramList1, List<AdInfo> paramList2, ControlInfo paramControlInfo, List<AdExtend> paramList)
  {
    mBannerList = paramList1;
    mItemList = paramList2;
    mControlInfo = paramControlInfo;
    mAdExtend = paramList;
    parseAdResp(mItemList);
  }
  
  private void parseAdResp(List<AdInfo> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      AdInfo localAdInfo = (AdInfo)paramList.next();
      if (localAdInfo.getAdType().equals(AdInfo.AdType.GAME)) {
        mGameList.add(localAdInfo);
      } else if (localAdInfo.getAdType().equals(AdInfo.AdType.APPLICATION)) {
        mAppList.add(localAdInfo);
      }
    }
  }
  
  public List<AdExtend> getAdExtend()
  {
    return mAdExtend;
  }
  
  public List<AdInfo> getAppList()
  {
    return mAppList;
  }
  
  public List<AdInfo> getBannerList()
  {
    return mBannerList;
  }
  
  public ControlInfo getControlInfo()
  {
    return mControlInfo;
  }
  
  public List<AdInfo> getGameList()
  {
    return mGameList;
  }
  
  public List<AdInfo> getItemList()
  {
    return mItemList;
  }
  
  public void setAdExtend(List<AdExtend> paramList)
  {
    mAdExtend = paramList;
  }
  
  public void setAppList(List<AdInfo> paramList)
  {
    mAppList = paramList;
  }
  
  public void setBannerList(List<AdInfo> paramList)
  {
    mBannerList = paramList;
  }
  
  public void setControlInfo(ControlInfo paramControlInfo)
  {
    mControlInfo = paramControlInfo;
  }
  
  public void setGameList(List<AdInfo> paramList)
  {
    mGameList = paramList;
  }
  
  public void setItemList(List<AdInfo> paramList)
  {
    mItemList = paramList;
  }
}
