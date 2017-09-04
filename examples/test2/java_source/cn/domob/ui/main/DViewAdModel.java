package cn.domob.ui.main;

import cn.domob.wall.core.DService;
import cn.domob.wall.core.DService.ErrorCode;
import cn.domob.wall.core.DService.ReceiveDataListener;
import cn.domob.wall.core.DService.ReceiveSearchDataListener;
import cn.domob.wall.core.bean.AdExtend;
import cn.domob.wall.core.bean.AdInfo;
import cn.domob.wall.core.bean.ControlInfo;
import java.util.List;

public class DViewAdModel
{
  private AdDataListener mAdDataListener;
  private DService mDService;
  private SearchDataListener searchDataListener;
  
  public DViewAdModel(DService paramDService)
  {
    mDService = paramDService;
    setListener();
  }
  
  private void setListener()
  {
    mDService.setReceiveDataListener(new DService.ReceiveDataListener()
    {
      public void onFailReceiveData(DService.ErrorCode paramAnonymousErrorCode, String paramAnonymousString)
      {
        if (mAdDataListener != null) {
          mAdDataListener.onFailReceiveData(paramAnonymousErrorCode, paramAnonymousString);
        }
      }
      
      public void onSuccessReceiveData(List<AdInfo> paramAnonymousList1, List<AdInfo> paramAnonymousList2, ControlInfo paramAnonymousControlInfo, List<AdExtend> paramAnonymousList)
      {
        if (mAdDataListener != null)
        {
          paramAnonymousList1 = new AdResp(paramAnonymousList1, paramAnonymousList2, paramAnonymousControlInfo, paramAnonymousList);
          mAdDataListener.onSuccessReceiveData(paramAnonymousList1);
        }
      }
    });
    mDService.setReceiveSearchDataListener(new DService.ReceiveSearchDataListener()
    {
      public void onFailReceiveData(DService.ErrorCode paramAnonymousErrorCode, String paramAnonymousString)
      {
        if (searchDataListener != null) {
          searchDataListener.onFailReceiveData(paramAnonymousErrorCode, paramAnonymousString);
        }
      }
      
      public void onSuccessReceiveData(List<AdInfo> paramAnonymousList1, List<AdInfo> paramAnonymousList2)
      {
        if (searchDataListener != null)
        {
          paramAnonymousList1 = new SearchResp(paramAnonymousList2, paramAnonymousList2);
          searchDataListener.onSuccessReceiveData(paramAnonymousList1);
        }
      }
    });
  }
  
  public void requestAdData()
  {
    mDService.requestDataAsyn();
  }
  
  public void requestSearchData(String paramString)
  {
    mDService.requestSearchDataAsyn(paramString);
  }
  
  public void setReceiveAdDataListener(AdDataListener paramAdDataListener)
  {
    mAdDataListener = paramAdDataListener;
  }
  
  public void setReceiveSearchDataListener(SearchDataListener paramSearchDataListener)
  {
    searchDataListener = paramSearchDataListener;
  }
  
  public static abstract interface AdDataListener
  {
    public abstract void onFailReceiveData(DService.ErrorCode paramErrorCode, String paramString);
    
    public abstract void onSuccessReceiveData(AdResp paramAdResp);
  }
  
  public static abstract interface SearchDataListener
  {
    public abstract void onFailReceiveData(DService.ErrorCode paramErrorCode, String paramString);
    
    public abstract void onSuccessReceiveData(SearchResp paramSearchResp);
  }
}
