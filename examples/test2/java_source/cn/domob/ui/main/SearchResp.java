package cn.domob.ui.main;

import cn.domob.wall.core.bean.AdInfo;
import java.util.List;

public class SearchResp
{
  private List<AdInfo> recommendAdInfos;
  private List<AdInfo> searchAdInfos;
  
  public SearchResp(List<AdInfo> paramList1, List<AdInfo> paramList2)
  {
    searchAdInfos = paramList1;
    recommendAdInfos = paramList2;
  }
  
  public List<AdInfo> getRecommendAdInfos()
  {
    return recommendAdInfos;
  }
  
  public List<AdInfo> getSearchAdInfos()
  {
    return searchAdInfos;
  }
  
  public void setRecommendAdInfos(List<AdInfo> paramList)
  {
    recommendAdInfos = paramList;
  }
  
  public void setSearchAdInfos(List<AdInfo> paramList)
  {
    searchAdInfos = paramList;
  }
}
